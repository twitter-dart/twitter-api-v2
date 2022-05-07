// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'client/client_context.dart';
import 'client/oauth_tokens.dart';
import 'service/compliance/compliance_service.dart';
import 'service/lists/lists_service.dart';
import 'service/spaces/spaces_service.dart';
import 'service/tweets/tweets_service.dart';
import 'service/twitter_service.dart';
import 'service/users/users_service.dart';

abstract class TwitterApi {
  /// Returns the new instance of [TwitterApi].
  factory TwitterApi({
    required String bearerToken,
    OAuthTokens? oauthTokens,
  }) =>
      _TwitterApi(bearerToken: bearerToken, oauthTokens: oauthTokens);

  /// Returns the tweets service.
  TweetsService get tweetsService;

  /// Returns the users service.
  UsersService get usersService;

  /// Returns the spaces service.
  SpacesService get spacesService;

  /// Returns the lists service.
  ListsService get listsService;

  /// Returns the compliance service.
  ComplianceService get complianceService;
}

class _TwitterApi implements TwitterApi {
  _TwitterApi({
    required String bearerToken,
    OAuthTokens? oauthTokens,
  }) : _twitterService = TwitterService(
          context: ClientContext(
            bearerToken: bearerToken,
            oauthTokens: oauthTokens,
          ),
        );

  /// The twitter service
  final TwitterService _twitterService;

  @override
  TweetsService get tweetsService => _twitterService.tweetsService;

  @override
  UsersService get usersService => _twitterService.usersService;

  @override
  SpacesService get spacesService => _twitterService.spacesService;

  @override
  ListsService get listsService => _twitterService.listsService;

  @override
  ComplianceService get complianceService => _twitterService.complianceService;
}
