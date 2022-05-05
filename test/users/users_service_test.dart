// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

import '../client_context_stubs.dart' as context;

void main() {
  test('.createFollow', () async {
    final usersService = UsersService(
      context: context.buildPostStub(
        '/2/users/0000/following',
        'test/users/data/create_follow.json',
      ),
    );

    final response = await usersService.createFollow(
      userId: '0000',
      targetUserId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyFollow', () async {
    final usersService = UsersService(
      context: context.buildDeleteStub(
        '/2/users/0000/following/1111',
        'test/users/data/destroy_follow.json',
      ),
    );

    final response = await usersService.destroyFollow(
      userId: '0000',
      targetUserId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.followers', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/users/0000/followers',
        'test/users/data/followers.json',
        {},
      ),
    );

    final response = await usersService.followers(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 10);
    expect(response.meta!.resultCount, 10);
  });

  test('.followings', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/users/0000/following',
        'test/users/data/followings.json',
        {},
      ),
    );

    final response = await usersService.followings(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 10);
    expect(response.meta!.resultCount, 10);
  });

  test('.lookupById', () async {
    final usersService = UsersService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/users/0000',
        'test/users/data/lookup_by_id.json',
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
        UserContext.oauth2,
        '/2/users',
        'test/users/data/lookup_by_ids.json',
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
        UserContext.oauth2,
        '/2/users/by/username/TwitterDev',
        'test/users/data/lookup_by_name.json',
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
        UserContext.oauth2,
        '/2/users/by',
        'test/users/data/lookup_by_names.json',
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
        UserContext.oauth2,
        '/2/users/me',
        'test/users/data/lookup_me.json',
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
}