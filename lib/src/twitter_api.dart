// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/twitter_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/src/twitter_client.dart';

abstract class TwitterApi {
  /// Returns the new instance of [TwitterApi].
  factory TwitterApi({
    required String consumerKey,
    required String consumerSecret,
    required String accessToken,
    required String accessTokenSecret,
  }) =>
      _TwitterApi(
        consumerKey: consumerKey,
        consumerSecret: consumerSecret,
        accessToken: accessToken,
        accessTokenSecret: accessTokenSecret,
      );

  /// Returns the tweets service.
  TweetsService get tweetService;

  /// Returns the users service.
  UsersService get usersService;
}

class _TwitterApi implements TwitterApi {
  _TwitterApi({
    required String consumerKey,
    required String consumerSecret,
    required String accessToken,
    required String accessTokenSecret,
  }) : _twitterService = TwitterService(
          client: TwitterClient(
            consumerKey: consumerKey,
            consumerSecret: consumerSecret,
            accessToken: accessToken,
            accessTokenSecret: accessTokenSecret,
          ),
        );

  /// The twitter service
  final TwitterService _twitterService;

  @override
  TweetsService get tweetService => _twitterService.tweetsService;

  @override
  UsersService get usersService => _twitterService.usersService;
}
