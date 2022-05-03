// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/oauth_tokens.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/twitter_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';

abstract class TwitterApi {
  /// Returns the new instance of [TwitterApi].
  factory TwitterApi({
    required String bearerToken,
    OAuthTokens? oauthTokens,
  }) =>
      _TwitterApi(bearerToken: bearerToken, oauthTokens: oauthTokens);

  /// Returns the tweets service.
  TweetsService get tweetService;

  /// Returns the users service.
  UsersService get usersService;
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
  TweetsService get tweetService => _twitterService.tweetsService;

  @override
  UsersService get usersService => _twitterService.usersService;
}
