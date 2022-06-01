// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../client/client_context.dart';
import '../../client/user_context.dart';
import '../base_service.dart';
import '../tweets/tweet_data.dart';
import '../tweets/tweet_expansion.dart';
import '../tweets/tweet_field.dart';
import '../tweets/tweet_meta.dart';
import '../twitter_response.dart';
import '../users/user_data.dart';
import '../users/user_expansion.dart';
import '../users/user_field.dart';
import 'space_data.dart';
import 'space_expansion.dart';
import 'space_meta.dart';

abstract class SpacesService {
  /// Returns the new instance of [SpacesService].
  factory SpacesService({required ClientContext context}) =>
      _SpacesService(context: context);

  /// Return live or scheduled Spaces matching your specified search terms.
  ///
  /// This endpoint performs a keyword search, meaning that it will return
  /// Spaces that are an exact case-insensitive match of the specified search
  /// term.
  ///
  /// The search term will match the original title of the Space.
  ///
  /// ## Parameters
  ///
  /// - [query]: Your search term. This can be any text (including mentions and
  ///            Hashtags) present in the title of the Space.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces/search
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search
  Future<TwitterResponse<List<SpaceData>, SpaceMeta>> search({
    required String query,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  });

  /// Returns a variety of information about a single Space specified by the
  /// requested ID.
  ///
  /// ## Parameters
  ///
  /// - [spaceId]: Unique identifier of the Space to request.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces/:id
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id
  Future<TwitterResponse<SpaceData, void>> lookupById({
    required String spaceId,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  });

  /// Returns details about multiple Spaces. Up to 100 comma-separated Spaces
  /// IDs can be looked up using this endpoint.
  ///
  /// ## Parameters
  ///
  /// - [spaceIds]: Unique identifiers of the Space to request.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces
  Future<TwitterResponse<List<SpaceData>, void>> lookupByIds({
    required List<String> spaceIds,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  });

  /// Returns a list of user who purchased a ticket to the requested Space.
  /// You must authenticate the request using the Access Token of the creator
  /// of the requested Space.
  ///
  /// ## Parameters
  ///
  /// - [spaceId]: Unique identifier of the Space for which you want to request
  ///              Tweets.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned
  ///                  pinned Tweet. The Tweet fields will only return if the
  ///                  user has a pinned Tweet and if you've also included the
  ///                  `expansions=pinned_tweet_id` query parameter in your
  ///                  request. While the referenced Tweet ID will be located
  ///                  in the original Tweet object, you will find this ID and
  ///                  all additional Tweet fields in the includes data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces/:id/buyers
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers
  Future<TwitterResponse<List<UserData>, void>> lookupBuyers({
    required String spaceId,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
  });

  /// Returns Tweets shared in the requested Spaces.
  ///
  /// ## Parameters
  ///
  /// - [spaceId]: Unique identifier of the Space containing the Tweets you'd
  ///              like to access.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [tweetFields]: Expansions enable you to request additional data objects
  ///                  that relate to the originally returned Tweets. Submit a
  ///                  list of desired expansions in a comma-separated list
  ///                  without spaces. The ID that represents the expanded data
  ///                  object will be included directly in the Tweet data
  ///                  object, but the expanded object metadata will be returned
  ///                  within the includes response object, and will also
  ///                  include the ID so that you can match this data object to
  ///                  the original Tweet object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces/:id/tweets
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String spaceId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
  });

  /// Returns live or scheduled Spaces created by the specified user IDs.
  /// Up to 100 comma-separated IDs can be looked up using this endpoint.
  ///
  /// ## Parameters
  ///
  /// - [userIds]: Unique identifiers of the User.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Space. Submit a
  ///                 list of desired expansions in a comma-separated list. The
  ///                 ID that represents the expanded data object will be
  ///                 included directly in the Space data object, but the
  ///                 expanded object metadata will be returned within the
  ///                 includes response object, and will also include the ID so
  ///                 that you can match this data object to the original Space
  ///                 object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Space. While the
  ///                 user ID will be located in the original Space object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/spaces/by/creator_ids
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    300 requests per 15-minute window per each authenticated user
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// - **Shared rate limit**:
  ///    1 request per second among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids
  Future<TwitterResponse<List<SpaceData>, SpaceMeta>> lookupByCreatorIds({
    required List<String> userIds,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  });
}

class _SpacesService extends BaseService implements SpacesService {
  /// Returns the new instance of [_SpacesService].
  _SpacesService({required super.context});

  @override
  Future<TwitterResponse<List<SpaceData>, SpaceMeta>> search({
    required String query,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces/search',
          queryParameters: {
            'query': query,
            'expansions': super.serializeExpansions(expansions),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: SpaceData.fromJson,
        metaBuilder: SpaceMeta.fromJson,
      );

  @override
  Future<TwitterResponse<SpaceData, void>> lookupById({
    required String spaceId,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  }) async =>
      super.buildResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces/$spaceId',
          queryParameters: {
            'expansions': super.serializeExpansions(expansions),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: SpaceData.fromJson,
      );

  @override
  Future<TwitterResponse<List<SpaceData>, void>> lookupByIds({
    required List<String> spaceIds,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces',
          queryParameters: {
            'ids': super.serialize(spaceIds),
            'expansions': super.serializeExpansions(expansions),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: SpaceData.fromJson,
      );

  @override
  Future<TwitterResponse<List<UserData>, void>> lookupBuyers({
    required String spaceId,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces/$spaceId/buyers',
          queryParameters: {
            'expansions': super.serializeExpansions(expansions),
            'tweet.fields': super.serializeFields(tweetFields),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: UserData.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String spaceId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces/$spaceId/tweets',
          queryParameters: {
            'expansions': super.serializeExpansions(expansions),
            'tweet.fields': super.serializeFields(tweetFields),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<SpaceData>, SpaceMeta>> lookupByCreatorIds({
    required List<String> userIds,
    List<SpaceExpansion>? expansions,
    List<UserField>? userFields,
  }) async =>
      super.buildMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/spaces/by/creator_ids',
          queryParameters: {
            'user_ids': super.serialize(userIds),
            'expansions': super.serializeExpansions(expansions),
            'user.fields': super.serializeFields(userFields),
          },
        ),
        dataBuilder: SpaceData.fromJson,
        metaBuilder: SpaceMeta.fromJson,
      );
}
