// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

void main() {
  test('.tweetsService', () {
    final twitter = TwitterApi(bearerToken: '');

    expect(twitter.tweetsService, isNotNull);
    expect(twitter.tweetsService, isA<TweetsService>());
  });

  test('.usersService', () {
    final twitter = TwitterApi(bearerToken: '');

    expect(twitter.usersService, isNotNull);
    expect(twitter.usersService, isA<UsersService>());
  });

  test('.spacesService', () {
    final twitter = TwitterApi(bearerToken: '');

    expect(twitter.spacesService, isNotNull);
    expect(twitter.spacesService, isA<SpacesService>());
  });
}
