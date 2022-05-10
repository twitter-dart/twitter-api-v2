// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../client/client_context.dart';
import '../../client/user_context.dart';
import '../base_service.dart';
import '../tweets/tweet_data.dart';
import '../tweets/tweet_meta.dart';
import '../twitter_response.dart';
import 'list_data.dart';
import 'list_meta.dart';

abstract class ListsService {
  /// Returns the new instance of [ListsService].
  factory ListsService({required ClientContext context}) =>
      _ListsService(context: context);

  /// Returns the details of a specified List.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List to lookup.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id
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
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id
  Future<TwitterResponse<ListData, void>> lookupById({required String listId});

  /// Returns all Lists owned by the specified user.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose owned Lists you would like to retrieve.
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
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/owned_lists
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
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupOwnedBy(
      {required String userId, int? maxResults, String? paginationToken});

  /// Enables the authenticated user to pin a List.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are pinning a List on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [listId]: The ID of the List that you would like the user id to pin.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/owned_lists
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists
  Future<bool> createPinnedList(
      {required String userId, required String listId});

  /// Enables the authenticated user to unpin a List.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are unpin a List on behalf of. It must
  ///             match your own user ID or that of an authenticating user,
  ///             meaning that you must pass the Access Tokens associated with
  ///             the user ID when authenticating your request.
  ///
  /// - [listId]: The ID of the List that you would like the user id to unpin.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/pinned_lists/:list_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id
  Future<bool> destroyPinnedList(
      {required String userId, required String listId});

  /// Returns the Lists pinned by a specified user.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose pinned Lists you would like to retrieve.
  ///             The user’s ID must correspond to the user ID of the
  ///             authenticating user, meaning that you must pass the Access
  ///             Tokens associated with the user ID when authenticating your
  ///             request.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/pinned_lists
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    15 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists
  Future<TwitterResponse<List<ListData>, ListMeta>> pinnedLists(
      {required String userId});

  /// Returns a list of Tweets from the specified List.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List whose Tweets you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the next_token returned in your
  ///                      previous response. To go back one page, pass the
  ///                      previous_token returned in your previous response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id/tweets
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
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets(
      {required String listId, int? maxResults, String? paginationToken});
}

class _ListsService extends BaseService implements ListsService {
  /// Returns the new instance of [_ListsService].
  _ListsService({required ClientContext context}) : super(context: context);

  @override
  Future<TwitterResponse<ListData, void>> lookupById(
      {required String listId}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId',
    );

    return TwitterResponse(data: ListData.fromJson(response['data']));
  }

  @override
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupOwnedBy({
    required String userId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/owned_lists',
      queryParameters: {
        'max_results': maxResults,
        'pagination_token': paginationToken,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<ListData>((list) => ListData.fromJson(list))
          .toList(),
      meta: ListMeta.fromJson(response['meta']),
    );
  }

  @override
  Future<bool> createPinnedList(
      {required String userId, required String listId}) async {
    final response = await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/pinned_lists',
      body: {'list_id': listId},
    );

    return response['data']['pinned'];
  }

  @override
  Future<bool> destroyPinnedList(
      {required String userId, required String listId}) async {
    final response = await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/pinned_lists/$listId',
    );

    return !response['data']['pinned'];
  }

  @override
  Future<TwitterResponse<List<ListData>, ListMeta>> pinnedLists(
      {required String userId}) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/pinned_lists',
    );

    return TwitterResponse(
      data: response['data']
          .map<ListData>((list) => ListData.fromJson(list))
          .toList(),
      meta: ListMeta.fromJson(response['meta']),
    );
  }

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String listId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId/tweets',
      queryParameters: {
        'max_results': maxResults,
        'pagination_token': paginationToken,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<TweetData>((tweet) => TweetData.fromJson(tweet))
          .toList(),
      meta: TweetMeta.fromJson(response['meta']),
    );
  }
}
