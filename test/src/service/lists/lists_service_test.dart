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
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_meta.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import 'package:twitter_api_v2/src/service/users/user_meta.dart';
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

  test('.createPinnedList', () async {
    final listsService = ListsService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/5555/pinned_lists',
        'test/src/service/lists/data/create_pinned_list.json',
      ),
    );

    final response = await listsService.createPinnedList(
      userId: '5555',
      listId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyPinnedList', () async {
    final listsService = ListsService(
      context: context.buildDeleteStub(
        '/2/users/5555/pinned_lists/1111',
        'test/src/service/lists/data/destroy_pinned_list.json',
      ),
    );

    final response = await listsService.destroyPinnedList(
      userId: '5555',
      listId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupPinnedLists', () async {
    final listsService = ListsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/5555/pinned_lists',
        'test/src/service/lists/data/lookup_pinned_lists.json',
        {},
      ),
    );

    final response = await listsService.lookupPinnedLists(userId: '5555');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<ListData>>());
    expect(response.meta, isA<ListMeta>());
    expect(response.data.length, 1);
    expect(response.meta!.resultCount, 1);
  });

  test('.lookupTweets', () async {
    final listsService = ListsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/lists/1111/tweets',
        'test/src/service/lists/data/lookup_tweets.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await listsService.lookupTweets(
      listId: '1111',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 1);
    expect(response.meta!.resultCount, 1);
  });

  test('.createPublicList', () async {
    final listsService = ListsService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/lists',
        'test/src/service/lists/data/create_list.json',
      ),
    );

    final response = await listsService.createPublicList(
      name: 'test',
      description: 'test description',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<ListData>());
  });

  test('.createPrivateList', () async {
    final listsService = ListsService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/lists',
        'test/src/service/lists/data/create_list.json',
      ),
    );

    final response = await listsService.createPrivateList(
      name: 'test',
      description: 'test description',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<ListData>());
  });

  test('.destroyList', () async {
    final listsService = ListsService(
      context: context.buildDeleteStub(
        '/2/lists/1111',
        'test/src/service/lists/data/destroy_list.json',
      ),
    );

    final response = await listsService.destroyList(listId: '1111');

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.updateListAsPublic', () async {
    final listsService = ListsService(
      context: context.buildPutStub(
        '/2/lists/1111',
        'test/src/service/lists/data/update_list.json',
      ),
    );

    final response = await listsService.updateListAsPublic(
      listId: '1111',
      name: 'test',
      description: 'test description',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.updateListAsPrivate', () async {
    final listsService = ListsService(
      context: context.buildPutStub(
        '/2/lists/1111',
        'test/src/service/lists/data/update_list.json',
      ),
    );

    final response = await listsService.updateListAsPrivate(
      listId: '1111',
      name: 'test',
      description: 'test description',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.createFollow', () async {
    final listsService = ListsService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/1111/followed_lists',
        'test/src/service/lists/data/create_follow.json',
      ),
    );

    final response = await listsService.createFollow(
      userId: '1111',
      listId: '2222',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyFollow', () async {
    final listsService = ListsService(
      context: context.buildDeleteStub(
        '/2/users/1111/followed_lists/2222',
        'test/src/service/lists/data/destroy_follow.json',
      ),
    );

    final response = await listsService.destroyFollow(
      userId: '1111',
      listId: '2222',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupFollowers', () async {
    final listsService = ListsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/lists/0000/followers',
        'test/src/service/lists/data/lookup_followers.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await listsService.lookupFollowers(
      listId: '0000',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 5);
    expect(response.meta!.resultCount, 5);
  });

  test('.lookupFollowedLists', () async {
    final listsService = ListsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/1111/followed_lists',
        'test/src/service/lists/data/lookup_followed_lists.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await listsService.lookupFollowedLists(
      userId: '1111',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<ListData>>());
    expect(response.meta, isA<ListMeta>());
    expect(response.data.length, 1);
    expect(response.meta!.resultCount, 1);
  });
}
