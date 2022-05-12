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
import '../users/user_data.dart';
import '../users/user_meta.dart';
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
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupPinnedLists(
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

  /// Enables the authenticated user to create a public List.
  ///
  /// ## Parameters
  ///
  /// - [name]: The name of the List you wish to create.
  ///
  /// - [description]: Description of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists
  Future<TwitterResponse<ListData, void>> createPublicList(
      {required String name, String? description});

  /// Enables the authenticated user to create a private List.
  ///
  /// ## Parameters
  ///
  /// - [name]: The name of the List you wish to create.
  ///
  /// - [description]: Description of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists
  Future<TwitterResponse<ListData, void>> createPrivateList(
      {required String name, String? description});

  /// Enables the authenticated user to delete a List that they own.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List to be deleted.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id
  Future<bool> destroyList({required String listId});

  /// Enables the authenticated user to update the meta data of a specified List
  /// that they own as a public scope.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List to be updated.
  ///
  /// - [name]: Updates the name of the List.
  ///
  /// - [description]: Updates the description of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id
  Future<bool> updateListAsPublic(
      {required String listId, String? name, String? description});

  /// Enables the authenticated user to update the meta data of a specified List
  /// that they own as a private scope.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List to be updated.
  ///
  /// - [name]: Updates the name of the List.
  ///
  /// - [description]: Updates the description of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id
  Future<bool> updateListAsPrivate(
      {required String listId, String? name, String? description});

  /// Enables the authenticated user to follow a List.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are following a List on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [listId]: The ID of the List that you would like the user id to follow.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/followed_lists
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists
  Future<bool> createFollow({required String userId, required String listId});

  /// Enables the authenticated user to unfollow a List.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are unfollowing a List on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [listId]: The ID of the List that you would like the user id to
  ///             unfollow.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/followed_lists/:list_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id
  Future<bool> destroyFollow({required String userId, required String listId});

  /// Returns a list of users who are followers of the specified List.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List whose followers you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request,
  ///                      or to go back to the previous page of results.
  ///                      To return the next page, pass the next_token returned
  ///                      in your previous response. To go back one page, pass
  ///                      the previous_token returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id/followers
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    180 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupFollowers(
      {required String listId, int? maxResults, String? paginationToken});

  /// Returns all Lists a specified user follows.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose followed Lists you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request,
  ///                      or to go back to the previous page of results.
  ///                      To return the next page, pass the next_token returned
  ///                      in your previous response. To go back one page, pass
  ///                      the previous_token returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/followed_lists
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
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupFollowedLists(
      {required String userId, int? maxResults, String? paginationToken});

  /// Enables the authenticated user to add a member to a List they own.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List you are adding a member to.
  ///
  /// - [userId]: The ID of the user you wish to add as a member of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id/members
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members
  Future<bool> createMember({required String listId, required String userId});

  /// Enables the authenticated user to remove a member from a List they own.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List you are removing a member from.
  ///
  /// - [userId]: The ID of the user you wish to remove as a member of the List.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id/members/:user_id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id
  Future<bool> destroyMember({required String listId, required String userId});

  /// Returns a list of users who are members of the specified List.
  ///
  /// ## Parameters
  ///
  /// - [listId]: The ID of the List whose members you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request,
  ///                      or to go back to the previous page of results. To
  ///                      return the next page, pass the next_token returned
  ///                      in your previous response. To go back one page, pass
  ///                      the previous_token returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/lists/:id/members
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
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupMembers(
      {required String listId, int? maxResults, String? paginationToken});

  /// Returns all Lists a specified user is a member of.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID whose List memberships you would like to retrieve.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default, each
  ///                 page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request,
  ///                      or to go back to the previous page of results. To
  ///                      return the next page, pass the next_token returned
  ///                      in your previous response. To go back one page, pass
  ///                      the previous_token returned in your previous
  ///                      response.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/:id/list_memberships
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-users-id-list_memberships
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupMemberships(
      {required String userId, int? maxResults, String? paginationToken});
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
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupPinnedLists(
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

  @override
  Future<TwitterResponse<ListData, void>> createPublicList(
          {required String name, String? description}) async =>
      await _createList(name: name, description: description, private: false);

  @override
  Future<TwitterResponse<ListData, void>> createPrivateList(
          {required String name, String? description}) async =>
      await _createList(name: name, description: description, private: true);

  @override
  Future<bool> destroyList({required String listId}) async {
    final response = await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId',
    );

    return response['data']['deleted'];
  }

  @override
  Future<bool> updateListAsPublic({
    required String listId,
    String? name,
    String? description,
  }) async =>
      await _updateList(
        listId: listId,
        name: name,
        description: description,
        private: false,
      );

  @override
  Future<bool> updateListAsPrivate({
    required String listId,
    String? name,
    String? description,
  }) async =>
      await _updateList(
        listId: listId,
        name: name,
        description: description,
        private: true,
      );

  @override
  Future<bool> createFollow({
    required String userId,
    required String listId,
  }) async {
    final response = await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/followed_lists',
      body: {
        'list_id': listId,
      },
    );

    return response['data']['following'];
  }

  @override
  Future<bool> destroyFollow({
    required String userId,
    required String listId,
  }) async {
    final response = await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/followed_lists/$listId',
    );

    return !response['data']['following'];
  }

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupFollowers({
    required String listId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId/followers',
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
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupFollowedLists({
    required String userId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/followed_lists',
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
  Future<bool> createMember({
    required String listId,
    required String userId,
  }) async {
    final response = await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId/members',
      body: {
        'user_id': userId,
      },
    );

    return response['data']['is_member'];
  }

  @override
  Future<bool> destroyMember({
    required String listId,
    required String userId,
  }) async {
    final response = await super.delete(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId/members/$userId',
    );

    return !response['data']['is_member'];
  }

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupMembers({
    required String listId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId/members',
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
  Future<TwitterResponse<List<ListData>, ListMeta>> lookupMemberships({
    required String userId,
    int? maxResults,
    String? paginationToken,
  }) async {
    final response = await super.get(
      UserContext.oauth2OrOAuth1,
      '/2/users/$userId/list_memberships',
      queryParameters: {
        'max_results': maxResults,
        'pagination_token': paginationToken,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<ListData>((user) => ListData.fromJson(user))
          .toList(),
      meta: ListMeta.fromJson(response['meta']),
    );
  }

  Future<TwitterResponse<ListData, void>> _createList({
    required String name,
    String? description,
    required bool private,
  }) async {
    final response = await super.post(
      UserContext.oauth2OrOAuth1,
      '/2/lists',
      body: {
        'name': name,
        'description': description,
        'private': private,
      },
    );

    return TwitterResponse(data: ListData.fromJson(response['data']));
  }

  Future<bool> _updateList({
    required String listId,
    String? name,
    String? description,
    required bool private,
  }) async {
    final response = await super.put(
      UserContext.oauth2OrOAuth1,
      '/2/lists/$listId',
      body: {
        'name': name,
        'description': description,
        'private': private,
      },
    );

    return response['data']['updated'];
  }
}
