// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';

/// The class represents the twitter services.
abstract class TwitterService {
  factory TwitterService({required ClientContext context}) =>
      _TwitterService(context: context);

  /// Returns the tweets service.
  TweetsService get tweetsService;

  /// Returns the users service.
  UsersService get usersService;

  /// Returns the spaces service.
  SpacesService get spacesService;
}

class _TwitterService implements TwitterService {
  /// Returns the new instance of [_TwitterService].
  _TwitterService({required ClientContext context})
      : tweetsService = TweetsService(context: context),
        usersService = UsersService(context: context),
        spacesService = SpacesService(context: context);

  @override
  final TweetsService tweetsService;

  @override
  final UsersService usersService;

  @override
  final SpacesService spacesService;
}
