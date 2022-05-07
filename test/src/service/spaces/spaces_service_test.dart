// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import '../../../mocks/client_context_stubs.dart' as context;

void main() {
  group('.search', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2AppOnly,
          '/2/spaces/search',
          'test/src/service/spaces/data/search.json',
          {'query': 'Hello, World!'},
        ),
      );

      final response = await spacesService.search(query: 'Hello, World!');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<SpaceData>>());
      expect(response.meta, isA<SpaceMeta>());
      expect(response.data.length, 2);
      expect(response.data.first.id, '1DXxyRYNejbKM');
      expect(response.data.first.state, SpaceState.live);
      expect(response.data[1].state, SpaceState.scheduled);
      expect(response.meta!.resultCount, 2);
    });

    test('throws TwitterException', () async {
      final spacesService = SpacesService(
        context: ClientContext(bearerToken: ''),
      );

      expect(
        () async => await spacesService.search(query: 'Throw TwitterException'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('throws TwitterException due to no data', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2AppOnly,
          '/2/spaces/search',
          'test/src/service/spaces/data/no_data.json',
          {'query': 'Throw TwitterException'},
        ),
      );

      expect(
        () async => await spacesService.search(query: 'Throw TwitterException'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });
  });
}
