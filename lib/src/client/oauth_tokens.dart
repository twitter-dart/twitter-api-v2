// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class OAuthTokens {
  /// Returns the new instance of [OAuthTokens].
  OAuthTokens({
    required this.consumerKey,
    required this.consumerSecret,
    required this.accessToken,
    required this.accessTokenSecret,
  });

  /// The key to authenticate OAuth 1.0a
  final String consumerKey;

  /// The key secret to authenticate OAuth 1.0a
  final String consumerSecret;

  /// The token to authenticate OAuth 1.0a
  final String accessToken;

  /// The token secret to authenticate OAuth 1.0a
  final String accessTokenSecret;
}
