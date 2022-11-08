// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';
import 'package:twitter_api_core/twitter_api_core.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/dms/direct_messages_service.dart';
import 'package:twitter_api_v2/src/service/dms/dm_event_data.dart';
import 'package:twitter_api_v2/src/service/dms/dm_event_meta.dart';
import 'package:twitter_api_v2/src/service/dms/message_data.dart';
import 'package:twitter_api_v2/src/service/dms/message_param.dart';
import 'package:twitter_api_v2/src/service/pagination/pagination_control.dart';
import 'package:twitter_api_v2/src/service/response/pagination_response.dart';
import 'package:twitter_api_v2/src/service/response/twitter_response.dart';
import '../../../mocks/client_context_stubs.dart' as context;
import '../common_expectations.dart';

void main() {
  group('.lookupEvents', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_events',
          'test/src/service/dms/data/lookup_events.json',
          {},
        ),
      );

      final response = await directMessagesService.lookupEvents();

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.lookupEvents(),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_events',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.lookupEvents(),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_events',
          'test/src/service/dms/data/no_data.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.lookupEvents(),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_events',
          'test/src/service/dms/data/no_json.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.lookupEvents(),
      );
    });

    test('with paging', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupEvents(
        paging: (event) {
          expect(event.count, count);
          expect(event.hasNextPage, isTrue);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotNextPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          if (event.count == 3) {
            return PaginationControl.stop();
          }

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with paging and no more next pages', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupEvents(
        paging: (event) {
          expect(event.count, count);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          if (event.count < 4) {
            expect(event.hasNextPage, isTrue);
            expect(event.hasNotNextPage, isFalse);
          } else {
            expect(event.hasNextPage, isFalse);
            expect(event.hasNotNextPage, isTrue);
          }

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });
  });

  group('.lookupConversationsWith', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/dm_events',
          'test/src/service/dms/data/lookup_conversations_with.json',
          {},
        ),
      );

      final response = await directMessagesService.lookupConversationsWith(
        participantId: '1234',
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.lookupConversationsWith(
          participantId: '1234',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/dm_events',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.lookupConversationsWith(
          participantId: '1234',
        ),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/dm_events',
          'test/src/service/dms/data/no_data.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.lookupConversationsWith(
          participantId: '1234',
        ),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/dm_events',
          'test/src/service/dms/data/no_json.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.lookupConversationsWith(
          participantId: '1234',
        ),
      );
    });

    test('with paging', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupConversationsWith(
        participantId: '1234',
        paging: (event) {
          expect(event.count, count);
          expect(event.hasNextPage, isTrue);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotNextPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          if (event.count == 3) {
            return PaginationControl.stop();
          }

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with paging and no more next pages', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupConversationsWith(
        participantId: '1234',
        paging: (event) {
          expect(event.count, count);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          if (event.count < 4) {
            expect(event.hasNextPage, isTrue);
            expect(event.hasNotNextPage, isFalse);
          } else {
            expect(event.hasNextPage, isFalse);
            expect(event.hasNotNextPage, isTrue);
          }

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });
  });

  group('.lookupConversationsById', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/dm_events',
          'test/src/service/dms/data/lookup_conversations_by_id.json',
          {},
        ),
      );

      final response = await directMessagesService.lookupConversationsById(
        conversationId: '1234',
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.lookupConversationsById(
          conversationId: '1234',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/dm_events',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.lookupConversationsById(
          conversationId: '1234',
        ),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/dm_events',
          'test/src/service/dms/data/no_data.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.lookupConversationsById(
          conversationId: '1234',
        ),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/dm_events',
          'test/src/service/dms/data/no_json.json',
          {},
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.lookupConversationsById(
          conversationId: '1234',
        ),
      );
    });

    test('with paging', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupConversationsById(
        conversationId: '1234',
        paging: (event) {
          expect(event.count, count);
          expect(event.hasNextPage, isTrue);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotNextPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          if (event.count == 3) {
            return PaginationControl.stop();
          }

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });

    test('with paging and no more next pages', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildGetStubWithAnyUriAndMultiResources(
          UserContext.oauth2OrOAuth1,
          [
            'test/src/service/pagination/data/dms/dataset_1.json',
            'test/src/service/pagination/data/dms/dataset_2.json',
            'test/src/service/pagination/data/dms/dataset_3.json',
            'test/src/service/pagination/data/dms/dataset_4.json',
          ],
        ),
      );

      int count = 1;
      final response = await directMessagesService.lookupConversationsById(
        conversationId: '1234',
        paging: (event) {
          expect(event.count, count);
          expect(event.hasPreviousPage, isFalse);
          expect(event.hasNotPreviousPage, isTrue);

          if (event.count < 4) {
            expect(event.hasNextPage, isTrue);
            expect(event.hasNotNextPage, isFalse);
          } else {
            expect(event.hasNextPage, isFalse);
            expect(event.hasNotNextPage, isTrue);
          }

          expect(event.response, isA<PaginationResponse>());
          expect(event.response.data, isA<List<DMEventData>>());
          expect(event.response.meta, isA<DMEventMeta>());
          expect(event.response.data.length, 4);
          expect(event.response.meta, isNotNull);
          expect(event.response.meta!.resultCount, 4);

          count++;

          return PaginationControl.forward();
        },
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<DMEventData>>());
      expect(response.meta, isA<DMEventMeta>());
      expect(response.data.length, 4);
      expect(response.meta, isNotNull);
      expect(response.meta!.resultCount, 4);
    });
  });

  group('.createMessageWith', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/messages',
          'test/src/service/dms/data/create_message_with.json',
        ),
      );

      final response = await directMessagesService.createMessageWith(
        participantId: '1234',
        message: MessageParam(text: 'test'),
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<MessageData>());
      expect(response.data.eventId, '1589951958990716934');
      expect(response.data.conversationId,
          '1514013247719952385-1514013247719952385');
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.createMessageWith(
          participantId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/messages',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.createMessageWith(
          participantId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/messages',
          'test/src/service/dms/data/no_data.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.createMessageWith(
          participantId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/with/1234/messages',
          'test/src/service/dms/data/no_json.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.createMessageWith(
          participantId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });
  });

  group('.createMessageTo', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/messages',
          'test/src/service/dms/data/create_message_to.json',
        ),
      );

      final response = await directMessagesService.createMessageTo(
        conversationId: '1234',
        message: MessageParam(text: 'test'),
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<MessageData>());
      expect(response.data.eventId, '1589951958990716934');
      expect(response.data.conversationId,
          '1514013247719952385-1514013247719952385');
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.createMessageTo(
          conversationId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/messages',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.createMessageTo(
          conversationId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/messages',
          'test/src/service/dms/data/no_data.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.createMessageTo(
          conversationId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations/1234/messages',
          'test/src/service/dms/data/no_json.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.createMessageTo(
          conversationId: '1234',
          message: MessageParam(text: 'test'),
        ),
      );
    });
  });

  group('.createGroupConversation', () {
    test('normal case', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations',
          'test/src/service/dms/data/create_group_conversation.json',
        ),
      );

      final response = await directMessagesService.createGroupConversation(
        participantIds: ['aaa'],
        message: MessageParam(text: 'test'),
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<MessageData>());
      expect(response.data.eventId, '1589951958990716934');
      expect(response.data.conversationId,
          '1514013247719952385-1514013247719952385');
    });

    test('with invalid access token', () async {
      final directMessagesService = DirectMessagesService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await directMessagesService.createGroupConversation(
          participantIds: ['aaa'],
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations',
          'test/src/service/dms/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await directMessagesService.createGroupConversation(
          participantIds: ['aaa'],
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with errors', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations',
          'test/src/service/dms/data/no_data.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoData(
        () async => await directMessagesService.createGroupConversation(
          participantIds: ['aaa'],
          message: MessageParam(text: 'test'),
        ),
      );
    });

    test('with no json', () async {
      final directMessagesService = DirectMessagesService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/dm_conversations',
          'test/src/service/dms/data/no_json.json',
        ),
      );

      expectDataNotFoundExceptionDueToNoJson(
        () async => await directMessagesService.createGroupConversation(
          participantIds: ['aaa'],
          message: MessageParam(text: 'test'),
        ),
      );
    });
  });
}
