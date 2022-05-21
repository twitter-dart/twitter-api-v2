// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../client/client_context.dart';
import '../../client/user_context.dart';
import '../base_service.dart';
import '../twitter_response.dart';
import '../users/user_data.dart';
import '../users/user_expansion.dart';
import '../users/user_meta.dart';
import 'reply_setting.dart';
import 'tweet_count_data.dart';
import 'tweet_count_meta.dart';
import 'tweet_data.dart';
import 'tweet_expansion.dart';
import 'tweet_meta.dart';

abstract class TweetsService {
  /// Returns the new instance of [TweetsService].
  factory TweetsService({required ClientContext context}) =>
      _TweetsService(context: context);

  /// Creates a Tweet on behalf of an authenticated user.
  ///
  /// ## Parameters
  ///
  /// - [text]: Text of the Tweet being created.
  ///           This field is required if media.media_ids is not present.
  ///
  /// - [quoteTweetId]: Link to the Tweet being quoted.
  ///
  /// - [forSuperFollowersOnly]: Allows you to Tweet exclusively for [Super Followers](https://help.twitter.com/en/using-twitter/super-follows).
  ///
  /// - [mediaIds]: A list of Media IDs being attached to the Tweet.
  ///               This is only required if the request includes
  ///               the [taggedUserIds].
  ///
  /// - [taggedUserIds]: A list of User IDs being tagged in the Tweet with
  ///                    Media. If the user you're tagging doesn't have
  ///                    photo-tagging enabled, their names won't show up in
  ///                    the list of tagged users even though the Tweet is
  ///                    successfully created.
  ///
  /// - [inReplyToTweetId]: Tweet ID of the Tweet being replied to. Please note
  ///                       that [inReplyToTweetId] needs to be in the request
  ///                       if [excludeReplyUserIds] is present.
  ///
  /// - [replySetting]: Settings to indicate who can reply to the Tweet.
  ///                   Options include `mentionedUsers` and `following`.
  ///                   The default to `everyone`.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     200 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets
  Future<TwitterResponse<TweetData, void>> createTweet({
    required String text,
    String? quoteTweetId,
    bool? forSuperFollowersOnly,
    List<String>? mediaIds,
    List<String>? taggedUserIds,
    String? inReplyToTweetId,
    ReplySetting? replySetting,
    List<TweetExpansion>? expansions,
  });

  /// Allows a user or authenticated user ID to delete a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: The Tweet ID you are deleting.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id
  Future<bool> destroyTweet({required String tweetId});

  /// Causes the user ID identified in the path parameter to Like the target
  /// Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are liking a Tweet on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
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
  Future<bool> createLike({required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to unlike a Tweet.
  ///
  /// The request succeeds with no action when the user sends a request to
  /// a user they're not liking the Tweet or have already unliked the Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a Like of a Tweet on behalf
  ///             of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Tokens associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to unlike.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/likes/:tweet_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id
  Future<bool> destroyLike({required String userId, required String tweetId});

  /// Causes the user ID identified in the path parameter to Retweet the target
  /// Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are Retweeting a Tweet on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to
  ///              Retweet.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/retweets
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets
  Future<bool> createRetweet({required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to remove the Retweet of a Tweet.
  ///
  /// The request succeeds with no action when the user sends a request to
  /// a user they're not Retweeting the Tweet or have already removed the
  /// Retweet of.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a the Retweet of a Tweet on
  ///             behalf of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Tokens associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to remove the
  ///              Retweet of.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/retweets/:source_tweet_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id
  Future<bool> destroyRetweet(
      {required String userId, required String tweetId});

  /// Allows you to get information about a Tweet’s liking users.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Tweet ID of the Tweet to request liking users of.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned in your
  ///                      previous response. To go back one page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned users. The ID that
  ///                 represents the expanded data object will be included
  ///                 directly in the user data object, but the expanded object
  ///                 metadata will be returned within the includes response
  ///                 object, and will also include the ID so that you can
  ///                 match this data object to the original Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id/liking_users
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///     75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupLikingUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
  });

  /// Allows you to get information about a user’s liked Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: User ID of the user to request liked Tweets for.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 10 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned in your
  ///                      previous response. To go back one page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/liked_tweets
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupLikedTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  });

  /// Allows you to get information about who has Retweeted a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Tweet ID of the Tweet to request Retweeting users of.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results.
  ///                      To return the next page, pass the `next_token`
  ///                      returned in your previous response. page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned users. The ID that
  ///                 represents the expanded data object will be included
  ///                 directly in the user data object, but the expanded object
  ///                 metadata will be returned within the includes response
  ///                 object, and will also include the ID so that you can match
  ///                 this data object to the original Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id/retweeted_by
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupRetweetedUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
  });

  /// Returns Quote Tweets for a Tweet specified by the requested Tweet ID.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to request.
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve,
  ///                 up to a maximum of 100 per distinct request. By default,
  ///                 10 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 10. It is possible to
  ///                 receive less than the max_results per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards through
  ///                      'pages' of results, based on the value of the
  ///                      `next_token`. The value used with the parameter is
  ///                      pulled directly from the response provided by the
  ///                      API, and should not be modified.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id/quote_tweets
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupQuoteTweets({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  });

  /// The recent search endpoint returns Tweets from the last seven days that
  /// match a search query.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets. You can learn how to build
  ///            this query by reading our [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/build-a-query).
  ///            If you have Essential or Elevated access, you can use the Basic
  ///            operators when building your query and can make queries up to
  ///            512 characters long. Learn more about our access levels on the
  ///            `about Twitter API page`.
  ///
  /// - [maxResults]: The maximum number of search results to be returned by a
  ///                 request. A number between 10 and 100. By default, a
  ///                 request response will return 10 results.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, and should not be
  ///                modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/paginate).
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
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
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent({
    required String query,
    int? maxResults,
    String? nextToken,
    List<TweetExpansion>? expansions,
  });

  /// This endpoint is only available to those users who have been approved for
  /// Academic Research access.
  ///
  /// The full-archive search endpoint returns the complete history of public
  /// Tweets matching a search query; since the first Tweet was created March
  /// 26, 2006.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets.
  ///            You can learn how to build this query by reading our build a
  ///            query guide. You can use all available operators and can make
  ///            queries up to 1,024 characters long.
  ///
  /// - [maxResults]: The maximum number of search results to be returned by a
  ///                 request. A number between 10 and the system limit
  ///                 (currently 500). By default, a request response will
  ///                 return 10 results.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, and should not be
  ///                modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/paginate).
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/search/all
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    1 request per second shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchAll({
    required String query,
    int? maxResults,
    String? nextToken,
    List<TweetExpansion>? expansions,
  });

  /// Returns a variety of information about a single Tweet specified by the
  /// requested ID.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to request.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    900 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id
  Future<TwitterResponse<TweetData, void>> lookupById(
      {required String tweetId, List<TweetExpansion>? expansions});

  /// Returns a variety of information about the Tweet specified by the
  /// requested ID or list of IDs.
  ///
  /// ## Parameters
  ///
  /// - [tweetIds]: Unique identifiers of the Tweet to request.
  ///               Up to 100 are allowed in a single request.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    900 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets
  Future<TwitterResponse<List<TweetData>, void>> lookupByIds(
      {required List<String> tweetIds});

  /// The recent Tweet counts endpoint returns count of Tweets from the last
  /// seven days that match a query.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets. You can learn how to build
  ///            this query by reading a [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/integrate/build-a-query).
  ///            If you have Essential or Elevated access, you can use
  ///            the Basic operators when building your query and can make
  ///            queries up to 512 characters long.
  ///            If you have been approved for Academic Research access,
  ///            you can use all available operators and can make queries
  ///            up to 1,024 characters long. Learn more about our access levels
  ///            on the `about Twitter API page`.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, assuming that your
  ///                request contains more than 31 days-worth of results, and
  ///                should not be modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/pagination).
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/counts/recent
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countRecent(
      {required String query, String? nextToken});

  /// This endpoint is only available to those users who have been approved
  /// for Academic Research access.
  ///
  /// The full-archive Tweet counts endpoint returns the count of Tweets that
  /// match your query from the complete history of public Tweets;
  /// since the first Tweet was created March 26, 2006.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets.
  ///            You can learn how to build this query by reading a [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/integrate/build-a-query).
  ///            You can use all available operators and can make queries
  ///            up to 1,024 characters long.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, assuming that your
  ///                request contains more than 31 days-worth of results, and
  ///                should not be modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/pagination).
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/counts/all
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countAll(
      {required String query, String? nextToken});

  /// Causes the user ID of an authenticated user identified in the path
  /// parameter to Bookmark the target Tweet provided in the request body.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID of an authenticated user who you are bookmarking
  ///             a Tweet on behalf of. It must match your own user ID or
  ///             that of an authenticating user, meaning that you must pass
  ///             the Access Token associated with the user ID when
  ///             authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to
  ///              Bookmark.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/bookmarks
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks
  Future<bool> createBookmark(
      {required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to remove a Bookmark of a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a Bookmark of a Tweet on
  ///             behalf of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Token associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to remove a
  ///              Bookmark of.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/bookmarks/:tweet_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id
  Future<bool> destroyBookmark(
      {required String userId, required String tweetId});

  /// Allows you to get information about a authenticated user’s 800 most recent
  /// bookmarked Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: User ID of an authenticated user to request bookmarked Tweets
  ///             for.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/bookmarks/:tweet_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupBookmarks(
      {required String userId, List<TweetExpansion>? expansions});

  /// Hides a reply to a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to hide.
  ///              The Tweet must belong to a conversation initiated by the
  ///              authenticating user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id/hidden
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden
  Future<bool> createHiddenReply({required String tweetId});

  /// Unhides a reply to a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to unhide.
  ///              The Tweet must belong to a conversation initiated by the
  ///              authenticating user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/:id/hidden
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden
  Future<bool> destroyHiddenReply({required String tweetId});

  /// Returns Tweets mentioning a single user specified by the requested user
  /// ID.
  ///
  /// By default, the most recent ten Tweets are returned per request. Using
  /// pagination, up to the most recent 800 Tweets can be retrieved.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level
  /// Tweet cap.
  ///
  /// ## Parameters
  ///
  /// - [userId]: Unique identifier of the user for whom to return Tweets
  ///             mentioning the user. User ID can be referenced using
  ///             the `user/lookup` endpoint. More information on Twitter IDs is
  ///             [here](https://developer.twitter.com/en/docs/twitter-ids).
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve, up to
  ///                 a maximum of 100 per distinct request. By default, 10
  ///                 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 5. It is possible to
  ///                 receive less than the `max_results` per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards or backwards
  ///                      through 'pages' of results, based on the value of
  ///                      the `next_token` or `previous_token` in the response.
  ///                      The value used with the parameter is pulled directly
  ///                      from the response provided by the API, and should not
  ///                      be modified.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/mentions
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    450 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupMentions({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  });

  /// Returns Tweets composed by a single user, specified by the requested user
  /// ID.
  ///
  /// By default, the most recent ten Tweets are returned per request. Using
  /// pagination, the most recent 3,200 Tweets can be retrieved.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [userId]: Unique identifier of the Twitter account (user ID) for whom
  ///             to return results. User ID can be referenced using
  ///             the `user/lookup` endpoint. More information on Twitter IDs is
  ///             [here](https://developer.twitter.com/en/docs/twitter-ids).
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve, up to
  ///                 a maximum of 100 per distinct request. By default,
  ///                 10 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 5. It is possible to
  ///                 receive less than the `max_results` per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards or backwards
  ///                      through 'pages' of results, based on the value of
  ///                      the `next_token` or `previous_token` in the response.
  ///                      The value used with the parameter is pulled directly
  ///                      from the response provided by the API, and should
  ///                      not be modified.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/tweets
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    1500 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  });

  /// Streams about 1% of all Tweets in real-time.
  ///
  /// If you have [Academic Research access](https://developer.twitter.com/en/products/twitter-api/academic-research),
  /// you can connect up to two [redundant connections](https://developer.twitter.com/en/docs/twitter-api/tweets/sampled-stream/integrate/recovery-and-redundancy-features)
  /// to maximize your streaming up-time.
  ///
  /// ## Parameters
  ///
  /// - [backfillMinutes]: By passing this parameter, you can request up to five
  ///                      (5) minutes worth of streaming data that you might
  ///                      have missed during a disconnection to be delivered to
  ///                      you upon reconnection. The backfilled Tweets will
  ///                      automatically flow through the reconnected stream,
  ///                      with older Tweets generally being delivered before
  ///                      any newly matching Tweets. You must include a whole
  ///                      number between 1 and 5 as the value to this
  ///                      parameter.
  ///
  ///                      This feature will deliver duplicate Tweets, meaning
  ///                      that if you were disconnected for 90 seconds, and you
  ///                      requested two minutes of backfill, you will receive
  ///                      30 seconds worth of duplicate Tweets. Due to this,
  ///                      you should make sure your system is tolerant of
  ///                      duplicate data.
  ///
  ///                      This feature is currently only available to those
  ///                      that have been approved for Academic Research access.
  ///                      To learn more about this access level, please visit
  ///                      our section on [Academic Research](https://developer.twitter.com/en/products/twitter-api/academic-research).
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/sample/stream
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///   50 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream
  Future<Stream<TweetData>> volumeStreams({int? backfillMinutes});
}

class _TweetsService extends BaseService implements TweetsService {
  /// Returns the new instance of [_TweetsService].
  _TweetsService({required super.context});

  @override
  Future<TwitterResponse<TweetData, void>> createTweet({
    required String text,
    String? quoteTweetId,
    bool? forSuperFollowersOnly,
    List<String>? mediaIds,
    List<String>? taggedUserIds,
    String? inReplyToTweetId,
    ReplySetting? replySetting,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildResponse(
        await super.post(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          body: {
            'text': text,
            'quote_tweet_id': quoteTweetId,
            'for_super_followers_only': forSuperFollowersOnly,
            'media': {
              'media_ids': mediaIds,
              'tagged_user_ids': taggedUserIds,
            },
            'reply': {
              'in_reply_to_tweet_id': inReplyToTweetId,
            },
            //! `ReplySetting.everyone` cannot be specified for this endpoint.
            //! Convert to null and delete the field before sending a request.
            'reply_settings': replySetting == ReplySetting.everyone
                ? null
                : replySetting?.name,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<bool> destroyTweet({required String tweetId}) async {
    await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/tweets/$tweetId',
    );

    return true;
  }

  @override
  Future<bool> createLike({
    required String userId,
    required String tweetId,
  }) async {
    await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/likes',
      body: {'tweet_id': tweetId},
    );

    return true;
  }

  @override
  Future<bool> destroyLike({
    required String userId,
    required String tweetId,
  }) async {
    await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/likes/$tweetId',
    );

    return true;
  }

  @override
  Future<bool> createRetweet({
    required String userId,
    required String tweetId,
  }) async {
    await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/retweets',
      body: {'tweet_id': tweetId},
    );

    return true;
  }

  @override
  Future<bool> destroyRetweet({
    required String userId,
    required String tweetId,
  }) async {
    await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/retweets/$tweetId',
    );

    return true;
  }

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupLikingUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets/$tweetId/liking_users',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: UserData.fromJson,
        metaBuilder: UserMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupLikedTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/users/$userId/liked_tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupRetweetedUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets/$tweetId/retweeted_by',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: UserData.fromJson,
        metaBuilder: UserMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupQuoteTweets({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets/$tweetId/quote_tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent({
    required String query,
    int? maxResults,
    String? nextToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets/search/recent',
          queryParameters: {
            'query': query,
            'max_results': maxResults,
            'next_token': nextToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchAll({
    required String query,
    int? maxResults,
    String? nextToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/tweets/search/all',
          queryParameters: {
            'query': query,
            'max_results': maxResults,
            'next_token': nextToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<TweetData, void>> lookupById(
          {required String tweetId, List<TweetExpansion>? expansions}) async =>
      super.buildResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets/$tweetId',
          queryParameters: {
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, void>> lookupByIds(
          {required List<String> tweetIds}) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          queryParameters: {'ids': tweetIds.join(',')},
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countRecent({
    required String query,
    String? nextToken,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/tweets/counts/recent',
          queryParameters: {
            'query': query,
            'next_token': nextToken,
          },
        ),
        dataBuilder: TweetCountData.fromJson,
        metaBuilder: TweetCountMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countAll({
    required String query,
    String? nextToken,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/tweets/counts/all',
          queryParameters: {
            'query': query,
            'next_token': nextToken,
          },
        ),
        dataBuilder: TweetCountData.fromJson,
        metaBuilder: TweetCountMeta.fromJson,
      );

  @override
  Future<bool> createBookmark({
    required String userId,
    required String tweetId,
  }) async {
    await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/bookmarks',
      body: {'tweet_id': tweetId},
    );

    return true;
  }

  @override
  Future<bool> destroyBookmark({
    required String userId,
    required String tweetId,
  }) async {
    await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/bookmarks/$tweetId',
    );

    return true;
  }

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupBookmarks(
          {required String userId, List<TweetExpansion>? expansions}) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/users/$userId/bookmarks',
          queryParameters: {
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<bool> createHiddenReply({required String tweetId}) async {
    await super.put(
      UserContext.oauth2OrOAuth1,
      '/2/tweets/$tweetId/hidden',
      body: {'hidden': true},
    );

    return true;
  }

  @override
  Future<bool> destroyHiddenReply({required String tweetId}) async {
    await super.put(
      UserContext.oauth2OrOAuth1,
      '/2/tweets/$tweetId/hidden',
      body: {'hidden': false},
    );

    return true;
  }

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupMentions({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/users/$userId/mentions',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/2/users/$userId/tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': super.formatExpansions(expansions),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<Stream<TweetData>> volumeStreams({
    int? backfillMinutes,
    List<TweetExpansion>? expansions,
  }) async {
    final stream = await super.send(
      UserContext.oauth2Only,
      'GET',
      '/2/tweets/sample/stream',
      queryParameters: {
        'backfill_minutes': backfillMinutes,
        'expansions': super.formatExpansions(expansions),
      },
    );

    return stream.map(
      (event) => TweetData.fromJson(event['data']),
    );
  }
}
