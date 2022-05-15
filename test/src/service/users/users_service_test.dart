// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import 'package:twitter_api_v2/src/service/users/user_meta.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/src/twitter_exception.dart';
import '../../../mocks//client_context_stubs.dart' as context;

void main() {
  group('.createFollow', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/users/0000/following',
          'test/src/service/users/data/create_follow.json',
        ),
      );

      final response = await usersService.createFollow(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('throws TwitterException', () async {
      final usersService = UsersService(
        context: ClientContext(bearerToken: ''),
      );

      expect(
        () async =>
            await usersService.createFollow(userId: '', targetUserId: ''),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('throws TwitterException due to no data', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/users/0000/following',
          'test/src/service/users/data/no_data.json',
        ),
      );

      expect(
        () async => await usersService.createFollow(
          userId: '0000',
          targetUserId: '1111',
        ),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });
  });

  test('.destroyFollow', () async {
    final usersService = UsersService(
      context: context.buildDeleteStub(
        '/2/users/0000/following/1111',
        'test/src/service/users/data/destroy_follow.json',
      ),
    );

    final response = await usersService.destroyFollow(
      userId: '0000',
      targetUserId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupFollowers', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/followers',
        'test/src/service/users/data/lookup_followers.json',
        {},
      ),
    );

    final response = await usersService.lookupFollowers(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 10);
    expect(response.meta!.resultCount, 10);
  });

  test('.lookupFollowings', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/following',
        'test/src/service/users/data/lookup_followings.json',
        {},
      ),
    );

    final response = await usersService.lookupFollowings(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 10);
    expect(response.meta!.resultCount, 10);
  });

  test('.lookupById', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000',
        'test/src/service/users/data/lookup_by_id.json',
        {},
      ),
    );

    final response = await usersService.lookupById(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<UserData>());
    expect(response.data.id, '2244994945');
    expect(response.data.name, 'Twitter Dev');
    expect(response.data.username, 'TwitterDev');
  });

  test('.lookupByIds', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users',
        'test/src/service/users/data/lookup_by_ids.json',
        {'ids': '2244994945,783214'},
      ),
    );

    final response = await usersService.lookupByIds(
      userIds: ['2244994945', '783214'],
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.data.length, 2);
  });

  test('.lookupByName', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/by/username/TwitterDev',
        'test/src/service/users/data/lookup_by_name.json',
        {},
      ),
    );

    final response = await usersService.lookupByName(
      username: 'TwitterDev',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<UserData>());
  });

  test('.lookupByNames', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/by',
        'test/src/service/users/data/lookup_by_names.json',
        {'usernames': 'TwitterDev,Twitter'},
      ),
    );

    final response = await usersService.lookupByNames(
      usernames: ['TwitterDev', 'Twitter'],
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.data.length, 2);
  });

  test('.lookupMe', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/me',
        'test/src/service/users/data/lookup_me.json',
        {},
      ),
    );

    final response = await usersService.lookupMe();

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<UserData>());
    expect(response.data.id, '2244994945');
    expect(response.data.name, 'TwitterDev');
    expect(response.data.username, 'Twitter Dev');
  });

  test('.createMute', () async {
    final usersService = UsersService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/1111/muting',
        'test/src/service/users/data/create_mute.json',
      ),
    );

    final response = await usersService.createMute(
      userId: '1111',
      targetUserId: '2222',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyMute', () async {
    final usersService = UsersService(
      context: context.buildDeleteStub(
        '/2/users/1111/muting/2222',
        'test/src/service/users/data/destroy_mute.json',
      ),
    );

    final response = await usersService.destroyMute(
      userId: '1111',
      targetUserId: '2222',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupMutingUsers', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/1111/muting',
        'test/src/service/users/data/lookup_muting_users.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await usersService.lookupMutingUsers(
      userId: '1111',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
  });

  test('.createBlock', () async {
    final usersService = UsersService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/blocking',
        'test/src/service/users/data/create_block.json',
      ),
    );

    final response = await usersService.createBlock(
      userId: '0000',
      targetUserId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyBlock', () async {
    final usersService = UsersService(
      context: context.buildDeleteStub(
        '/2/users/0000/blocking/1111',
        'test/src/service/users/data/destroy_block.json',
      ),
    );

    final response = await usersService.destroyBlock(
      userId: '0000',
      targetUserId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupBlockingUsers', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/1111/blocking',
        'test/src/service/users/data/lookup_blocking_users.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await usersService.lookupBlockingUsers(
      userId: '1111',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 5);
    expect(response.meta!.resultCount, 5);
  });
}
