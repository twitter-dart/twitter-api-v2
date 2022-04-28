// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_meta.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/twitter_client.dart';

abstract class TweetsService {
  /// Returns the new instance of [TweetsService].
  factory TweetsService({required TwitterClient client}) =>
      _TweetsService(client: client);

  /// Causes the user ID identified in the path parameter to Like the target Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are liking a Tweet on behalf of.
  ///             It must match your own user ID or that of an authenticating user,
  ///             meaning that you must pass the Access Tokens associated with
  ///             the user ID when authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to Like.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/likes
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///   50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes
  Future<bool> likes({required String userId, required String tweetId});

  ///
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets. You can learn how to build
  ///            this query by reading our [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/build-a-query).
  ///
  ///            If you have Essential or Elevated access, you can use the Basic
  ///            operators when building your query and can make queries up to
  ///            512 characters long.
  ///
  ///            Learn more about our access levels on the `about Twitter API page`.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/search/recent
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///   450 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///   180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent(
      {required String query});
}

class _TweetsService implements TweetsService {
  /// Returns the new instance of [_TweetsService].
  _TweetsService({required this.client});

  /// The twitter client
  final TwitterClient client;

  @override
  Future<bool> likes({required String userId, required String tweetId}) async {
    final response = await client.post(
      Uri.https('api.twitter.com', '/2/users/$userId/likes'),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode({'tweet_id': tweetId}),
    );

    final json = jsonDecode(response.body);

    return json['data']['liked'];
  }

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent(
      {required String query}) async {
    final response = await client.get(
      Uri.https(
        'api.twitter.com',
        '/2/tweets/search/recent',
        {'query': query},
      ),
    );

    final json = jsonDecode(response.body);

    final data = <TweetData>[];
    for (final _data in json['data']) {
      data.add(TweetData.fromJson(_data));
    }

    return TwitterResponse(
      data: data,
      meta: TweetMeta.fromJson(json['meta']),
    );
  }
}
