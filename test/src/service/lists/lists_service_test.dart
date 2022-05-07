// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/lists/list_data.dart';
import 'package:twitter_api_v2/src/service/lists/list_meta.dart';
import 'package:twitter_api_v2/src/service/lists/lists_service.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/twitter_exception.dart';
import '../../../mocks/client_context_stubs.dart' as context;

void main() {
  group('.lookupById', () {
    test('normal case', () async {
      final listsService = ListsService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/lists/5555',
          'test/src/service/lists/data/lookup_by_id.json',
          {},
        ),
      );

      final response = await listsService.lookupById(listId: '5555');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<ListData>());
      expect(response.data.id, '84839422');
      expect(response.data.name, 'Official Twitter Accounts');
    });

    test('throws TwitterException', () async {
      final listsService = ListsService(
        context: ClientContext(bearerToken: ''),
      );

      expect(
        () async =>
            await listsService.lookupById(listId: 'Throw TwitterException'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('throws TwitterException due to no data', () async {
      final listsService = ListsService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/2/lists/5555',
          'test/src/service/lists/data/no_data.json',
          {},
        ),
      );

      expect(
        () async => await listsService.lookupById(listId: '5555'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('with OAuth1.0a', () async {
      final clientContext = context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/lists/5555',
        'test/src/service/lists/data/lookup_by_id.json',
        {},
      );

      when(clientContext.hasOAuth1Client).thenReturn(true);

      final listsService = ListsService(context: clientContext);
      final response = await listsService.lookupById(listId: '5555');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<ListData>());
    });
  });

  test('.lookupOwnedBy', () async {
    final listsService = ListsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/5555/owned_lists',
        'test/src/service/lists/data/lookup_owned_by.json',
        {
          'max_results': '50',
          'pagination_token': 'PAGINATION_TOKEN',
        },
      ),
    );

    final response = await listsService.lookupOwnedBy(
      userId: '5555',
      maxResults: 50,
      paginationToken: 'PAGINATION_TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<ListData>>());
    expect(response.meta, isA<ListMeta>());
    expect(response.data.length, 1);
    expect(response.meta!.resultCount, 1);
    expect(response.meta!.nextToken, 'NEXT_TOKEN');
    expect(response.meta!.previousToken, 'PREVIOUS_TOKEN');
  });
}
