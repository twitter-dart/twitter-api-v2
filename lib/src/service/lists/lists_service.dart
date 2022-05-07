// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/base_service.dart';
import 'package:twitter_api_v2/src/service/lists/list_data.dart';
import 'package:twitter_api_v2/src/service/lists/list_meta.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';

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
  /// - [paginationToken]: Used to request the next page of results if all results
  ///                      weren't returned with the latest request, or to go back to
  ///                      the previous page of results. To return the next page,
  ///                      pass the next_token returned in your previous response.
  ///                      To go back one page, pass the previous_token returned
  ///                      in your previous response.
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
}
