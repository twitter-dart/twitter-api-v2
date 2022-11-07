// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../base_service.dart';
import '../media/media_field.dart';
import '../pagination/bidirectional_pagination.dart';
import '../response/twitter_response.dart';
import '../tweets/tweet_field.dart';
import '../users/user_field.dart';
import 'direct_message_data.dart';
import 'direct_message_event_type.dart';
import 'direct_message_expansion.dart';
import 'direct_message_field.dart';
import 'direct_message_meta.dart';

abstract class DirectMessagesService {
  /// Returns the new instance of [DirectMessagesService].
  factory DirectMessagesService({required core.ClientContext context}) =>
      _DirectMessagesService(context: context);

  /// Returns a list of Direct Messages for the authenticated user,
  /// both sent and received.
  ///
  /// Direct Message events are returned in reverse chronological order.
  ///
  /// Supports retrieving events from the previous 30 days.
  ///
  /// ## Parameters
  ///
  /// - [eventType]: The type of Direct Message event to return.
  ///                If not included, all types are returned.
  ///
  /// - [maxResults]: The maximum number of results to be returned in a page.
  ///                 Must be between 1 and 100. The default is 100.
  ///
  /// - [paginationToken]: Contains either the `next_token` or `previous_token`
  ///                      value.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the returned Direct Message conversation
  ///                 events. The IDs that represents the expanded data objects
  ///                 will be included directly in the event data object, and
  ///                 the expanded object metadata will be returned within the
  ///                 includes response object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will be delivered in each returned
  ///                  Direct Message 'MessageCreate' event object that
  ///                  contains a Tweet reference. While the Tweet ID will be
  ///                  in the event object, you will find this ID and all
  ///                  additional Tweet fields in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which
  ///                 specific user fields will be delivered for Direct Message
  ///                 conversation events that reference a sender or participant
  ///                 ID. While the user ID will be located in the event object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                 specific media fields will be delivered in Direct Message
  ///                 `MessageCreate` events. While the media ID will be located
  ///                 in the event object, you will find this ID and all
  ///                 additional media fields in the includes data object.
  ///                 The event object will only include media fields if the
  ///                 Direct Message contains media and if you've also included
  ///                 the `expansions=attachments.media_keys` query parameter
  ///                 in your request.
  ///
  /// - [directMessageFields]: Extra fields to include in the event payload.
  ///                          `id`, and `event_type` are returned by default.
  ///                          The text value isn't included for
  ///                          `ParticipantsJoin` and `ParticipantsLeave`
  ///                          events.
  ///
  /// - [paging]: If this callback function is specified, paging is
  ///             performed continuously until certain conditions are met.
  ///             This paging function is bi-directional,
  ///             both forward and backward, and allows for safe paging.
  ///             The response and other metadata obtained when paging is
  ///             performed is passed to the callback function as
  ///             `PagingEvent` object. So you can get the result of paging
  ///             from `PagingEvent` object. Also, the direction and continuity
  ///             of paging can be controlled by returning
  ///             `PaginationControl` object in the `paging` callback function.
  ///             Please use `PaginationControl.forward()` to continue paging
  ///             and move forward, or use `PaginationControl.backward()`
  ///             to move backward. And be sure to return
  ///             `PaginationControl.stop()` to terminate paging on
  ///             arbitrary conditions, otherwise paging continues until the
  ///             next page runs out.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/dm_events
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - dm.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (User context)**:
  ///   300 requests per 15-minute window per each authenticated user.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_events
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupEvents({
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  });

  /// Returns a list of Direct Messages (DM) events within a 1-1 conversation
  /// with the user specified in the [participantId] path parameter.
  ///
  /// Messages are returned in reverse chronological order.
  ///
  /// ## Parameters
  ///
  /// - [participantId]: The participant id of the user that the authenticating
  ///                    user is having a 1-1 conversation with.
  ///
  /// - [eventType]: The type of Direct Message event to return.
  ///                If not included, all types are returned.
  ///
  /// - [maxResults]: The maximum number of results to be returned in a page.
  ///                 Must be between 1 and 100. The default is 100.
  ///
  /// - [paginationToken]: Contains either the `next_token` or `previous_token`
  ///                      value.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the returned Direct Message conversation
  ///                 events. The IDs that represents the expanded data objects
  ///                 will be included directly in the event data object, and
  ///                 the expanded object metadata will be returned within the
  ///                 includes response object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will be delivered in each returned
  ///                  Direct Message 'MessageCreate' event object that
  ///                  contains a Tweet reference. While the Tweet ID will be
  ///                  in the event object, you will find this ID and all
  ///                  additional Tweet fields in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which
  ///                 specific user fields will be delivered for Direct Message
  ///                 conversation events that reference a sender or participant
  ///                 ID. While the user ID will be located in the event object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                 specific media fields will be delivered in Direct Message
  ///                 `MessageCreate` events. While the media ID will be located
  ///                 in the event object, you will find this ID and all
  ///                 additional media fields in the includes data object.
  ///                 The event object will only include media fields if the
  ///                 Direct Message contains media and if you've also included
  ///                 the `expansions=attachments.media_keys` query parameter
  ///                 in your request.
  ///
  /// - [directMessageFields]: Extra fields to include in the event payload.
  ///                          `id`, and `event_type` are returned by default.
  ///                          The text value isn't included for
  ///                          `ParticipantsJoin` and `ParticipantsLeave`
  ///                          events.
  ///
  /// - [paging]: If this callback function is specified, paging is
  ///             performed continuously until certain conditions are met.
  ///             This paging function is bi-directional,
  ///             both forward and backward, and allows for safe paging.
  ///             The response and other metadata obtained when paging is
  ///             performed is passed to the callback function as
  ///             `PagingEvent` object. So you can get the result of paging
  ///             from `PagingEvent` object. Also, the direction and continuity
  ///             of paging can be controlled by returning
  ///             `PaginationControl` object in the `paging` callback function.
  ///             Please use `PaginationControl.forward()` to continue paging
  ///             and move forward, or use `PaginationControl.backward()`
  ///             to move backward. And be sure to return
  ///             `PaginationControl.stop()` to terminate paging on
  ///             arbitrary conditions, otherwise paging continues until the
  ///             next page runs out.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/dm_conversations/with/:participant_id/dm_events
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - dm.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (User context)**:
  ///   300 requests per 15-minute window per each authenticated user.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_conversations-with-participant_id-dm_events
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupConversationsWithParticipant({
    required String participantId,
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  });

  /// Returns a list of Direct Messages within a conversation specified in the
  /// [conversationId] path parameter.
  ///
  /// Messages are returned in reverse chronological order.
  ///
  /// ## Parameters
  ///
  /// - [conversationId]: The `id` of the Direct Message conversation for which
  ///                     events are being retrieved.
  ///
  /// - [eventType]: The type of Direct Message event to return.
  ///                If not included, all types are returned.
  ///
  /// - [maxResults]: The maximum number of results to be returned in a page.
  ///                 Must be between 1 and 100. The default is 100.
  ///
  /// - [paginationToken]: Contains either the `next_token` or `previous_token`
  ///                      value.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the returned Direct Message conversation
  ///                 events. The IDs that represents the expanded data objects
  ///                 will be included directly in the event data object, and
  ///                 the expanded object metadata will be returned within the
  ///                 includes response object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will be delivered in each returned
  ///                  Direct Message 'MessageCreate' event object that
  ///                  contains a Tweet reference. While the Tweet ID will be
  ///                  in the event object, you will find this ID and all
  ///                  additional Tweet fields in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which
  ///                 specific user fields will be delivered for Direct Message
  ///                 conversation events that reference a sender or participant
  ///                 ID. While the user ID will be located in the event object,
  ///                 you will find this ID and all additional user fields in
  ///                 the includes data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                 specific media fields will be delivered in Direct Message
  ///                 `MessageCreate` events. While the media ID will be located
  ///                 in the event object, you will find this ID and all
  ///                 additional media fields in the includes data object.
  ///                 The event object will only include media fields if the
  ///                 Direct Message contains media and if you've also included
  ///                 the `expansions=attachments.media_keys` query parameter
  ///                 in your request.
  ///
  /// - [directMessageFields]: Extra fields to include in the event payload.
  ///                          `id`, and `event_type` are returned by default.
  ///                          The text value isn't included for
  ///                          `ParticipantsJoin` and `ParticipantsLeave`
  ///                          events.
  ///
  /// - [paging]: If this callback function is specified, paging is
  ///             performed continuously until certain conditions are met.
  ///             This paging function is bi-directional,
  ///             both forward and backward, and allows for safe paging.
  ///             The response and other metadata obtained when paging is
  ///             performed is passed to the callback function as
  ///             `PagingEvent` object. So you can get the result of paging
  ///             from `PagingEvent` object. Also, the direction and continuity
  ///             of paging can be controlled by returning
  ///             `PaginationControl` object in the `paging` callback function.
  ///             Please use `PaginationControl.forward()` to continue paging
  ///             and move forward, or use `PaginationControl.backward()`
  ///             to move backward. And be sure to return
  ///             `PaginationControl.stop()` to terminate paging on
  ///             arbitrary conditions, otherwise paging continues until the
  ///             next page runs out.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/dm_conversations/:dm_conversation_id/dm_events
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - dm.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (User context)**:
  ///   300 requests per 15-minute window per each authenticated user.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_conversations-dm_conversation_id-dm_events
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupConversationsById({
    required String conversationId,
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  });
}

class _DirectMessagesService extends BaseService
    implements DirectMessagesService {
  /// Returns the new instance of [_DirectMessagesService].
  _DirectMessagesService({required super.context});

  @override
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupEvents({
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  }) async =>
          await super.executePaginationIfNecessary(
            core.UserContext.oauth2OrOAuth1,
            '/2/dm_events',
            {
              'event_type': eventType,
              'max_results': maxResults,
              'pagination_token': paginationToken,
              'expansions': expansions,
              'tweet.fields': tweetFields,
              'user.fields': userFields,
              'media.fields': mediaFields,
              'dm_event.fields': directMessageFields,
            },
            paging: paging,
            dataBuilder: DirectMessageData.fromJson,
            metaBuilder: DirectMessageMeta.fromJson,
          );

  @override
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupConversationsWithParticipant({
    required String participantId,
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  }) async =>
          await super.executePaginationIfNecessary(
            core.UserContext.oauth2OrOAuth1,
            '/2/dm_conversations/with/$participantId/dm_events',
            {
              'event_type': eventType,
              'max_results': maxResults,
              'pagination_token': paginationToken,
              'expansions': expansions,
              'tweet.fields': tweetFields,
              'user.fields': userFields,
              'media.fields': mediaFields,
              'dm_event.fields': directMessageFields,
            },
            paging: paging,
            dataBuilder: DirectMessageData.fromJson,
            metaBuilder: DirectMessageMeta.fromJson,
          );

  @override
  Future<TwitterResponse<List<DirectMessageData>, DirectMessageMeta>>
      lookupConversationsById({
    required String conversationId,
    DirectMessageEventType? eventType,
    int? maxResults,
    String? paginationToken,
    List<DirectMessageExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<MediaField>? mediaFields,
    List<DirectMessageField>? directMessageFields,
    Paging<List<DirectMessageData>, DirectMessageMeta>? paging,
  }) async =>
          await super.executePaginationIfNecessary(
            core.UserContext.oauth2OrOAuth1,
            '/2/dm_conversations/$conversationId/dm_events',
            {
              'event_type': eventType,
              'max_results': maxResults,
              'pagination_token': paginationToken,
              'expansions': expansions,
              'tweet.fields': tweetFields,
              'user.fields': userFields,
              'media.fields': mediaFields,
              'dm_event.fields': directMessageFields,
            },
            paging: paging,
            dataBuilder: DirectMessageData.fromJson,
            metaBuilder: DirectMessageMeta.fromJson,
          );
}
