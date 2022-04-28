// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/src/twitter_client.dart';

/// The class represents the twitter services.
abstract class TwitterService {
  factory TwitterService({required TwitterClient client}) =>
      _TwitterService(client: client);

  /// Returns the tweets service.
  TweetsService get tweetsService;

  /// Returns the users service.
  UsersService get usersService;
}

class _TwitterService implements TwitterService {
  /// Returns the new instance of [_TwitterService].
  _TwitterService({required TwitterClient client})
      : tweetsService = TweetsService(client: client),
        usersService = UsersService(client: client);

  @override
  final TweetsService tweetsService;

  @override
  final UsersService usersService;
}
