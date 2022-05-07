// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/base_service.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import 'package:twitter_api_v2/src/service/users/user_meta.dart';

abstract class UsersService {
  /// Returns the new instance of [UsersService].
  factory UsersService({required ClientContext context}) =>
      _UsersService(context: context);

  /// Allows a user ID to follow another user.
  ///
  /// If the target user does not have public Tweets, this endpoint will send a
  /// follow request.
  ///
  /// The request succeeds with no action when the authenticated user sends
  /// a request to a user they're already following, or if they're sending
  /// a follower request to a user that does not have public Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The authenticated user ID who you would like to initiate the
  ///             follow on behalf of. You must pass the Access Tokens that
  ///             relate to this user when authenticating the request.
  ///
  /// - [targetUserId]: The user ID of the user that you would like the id to
  ///                   follow.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/following
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following
  Future<bool> createFollow(
      {required String userId, required String targetUserId});

  /// Allows a user ID to unfollow another user.
  ///
  /// The request succeeds with no action when the authenticated user ends a
  /// request to a user they're not following or have already unfollowed.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you would like to initiate the unfollow on
  ///             behalf of. You must pass the Access Tokens that relate to this
  ///             user when authenticating the request.
  ///
  /// - [targetUserId]: The user ID of the user that you would like the user id
  ///                   to unfollow.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:source_user_id/following/:target_user_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following
  Future<bool> destroyFollow(
      {required String userId, required String targetUserId});

  /// Returns a list of users who are followers of the specified user ID.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose followers you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and the 1000. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned
  ///                      in your previous response. To go back one page, pass
  ///                      the `previous_token` returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/followers
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    15 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    15 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers
  Future<TwitterResponse<List<UserData>, UserMeta>> followers(
      {required String userId, int? maxResults, String? paginationToken});

  /// Returns a list of users the specified user ID is following.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose following you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and the 1000. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned
  ///                      in your previous response. To go back one page, pass
  ///                      the `previous_token` returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/following
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token):
  ///    15 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    15 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following
  Future<TwitterResponse<List<UserData>, UserMeta>> followings(
      {required String userId, int? maxResults, String? paginationToken});

  /// Returns a variety of information about a single user specified by the
  /// requested ID.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The ID of the user to lookup.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id
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
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id
  Future<TwitterResponse<UserData, void>> lookupById({required String userId});

  /// Returns a variety of information about one or more users specified by the
  /// requested IDs.
  ///
  /// ## Parameters
  ///
  /// - [userIds]: 	A list of user IDs.
  ///               Up to 100 are allowed in a single request.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users
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
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users
  Future<TwitterResponse<List<UserData>, void>> lookupByIds(
      {required List<String> userIds});

  /// Returns a variety of information about one or more users specified by
  /// their usernames.
  ///
  /// ## Parameters
  ///
  /// - [username]: The Twitter username (handle) of the user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/by/username/:username
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
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username
  Future<TwitterResponse<UserData, void>> lookupByName(
      {required String username});

  /// Returns a variety of information about one or more users specified by
  /// their usernames.
  ///
  /// ## Parameters
  ///
  /// - [usernames]: A list of Twitter usernames (handles).
  ///                Up to 100 are allowed in a single request.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/by
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
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by
  Future<TwitterResponse<List<UserData>, void>> lookupByNames(
      {required List<String> usernames});

  /// Returns information about an authorized user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/me
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me
  Future<TwitterResponse<UserData, void>> lookupMe();
}

class _UsersService extends BaseService implements UsersService {
  /// Returns the new instance of [_UsersService].
  _UsersService({required ClientContext context}) : super(context: context);

  @override
  Future<bool> createFollow({
    required String userId,
    required String targetUserId,
  }) async {
    final response = await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/following',
      body: {'target_user_id': targetUserId},
    );

    return response['data']['following'];
  }

  @override
  Future<bool> destroyFollow({
    required String userId,
    required String targetUserId,
  }) async {
    final response = await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/following/$targetUserId',
    );

    return !response['data']['following'];
  }

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> followers({
    required String userId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/followers',
      queryParameters: {
        'max_results': maxResults,
        'pagination_token': paginationToken,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<UserData>((user) => UserData.fromJson(user))
          .toList(),
      meta: UserMeta.fromJson(response['meta']),
    );
  }

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> followings({
    required String userId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/following',
      queryParameters: {
        'max_results': maxResults,
        'pagination_token': paginationToken,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<UserData>((user) => UserData.fromJson(user))
          .toList(),
      meta: UserMeta.fromJson(response['meta']),
    );
  }

  @override
  Future<TwitterResponse<UserData, void>> lookupById(
      {required String userId}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId',
    );

    return TwitterResponse(data: UserData.fromJson(response['data']));
  }

  @override
  Future<TwitterResponse<List<UserData>, void>> lookupByIds(
      {required List<String> userIds}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users',
      queryParameters: {'ids': userIds.join(',')},
    );

    return TwitterResponse(
      data: response['data']
          .map<UserData>((user) => UserData.fromJson(user))
          .toList(),
    );
  }

  @override
  Future<TwitterResponse<UserData, void>> lookupByName(
      {required String username}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/by/username/$username',
    );

    return TwitterResponse(data: UserData.fromJson(response['data']));
  }

  @override
  Future<TwitterResponse<List<UserData>, void>> lookupByNames(
      {required List<String> usernames}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/by',
      queryParameters: {'usernames': usernames.join(',')},
    );

    return TwitterResponse(
      data: response['data']
          .map<UserData>((user) => UserData.fromJson(user))
          .toList(),
    );
  }

  @override
  Future<TwitterResponse<UserData, void>> lookupMe() async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/me',
    );

    return TwitterResponse(data: UserData.fromJson(response['data']));
  }
}
