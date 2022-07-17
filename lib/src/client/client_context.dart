// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'dart:async';

import 'package:http/http.dart' as http;

// Project imports:
import '../config/retry_config.dart';
import 'client.dart';
import 'oauth1_client.dart';
import 'oauth2_client.dart';
import 'oauth_tokens.dart';
import 'user_context.dart';

abstract class ClientContext {
  /// Returns the new instance of [ClientContext].
  factory ClientContext({
    required String bearerToken,
    OAuthTokens? oauthTokens,
    required Duration timeout,
    RetryConfig? retryConfig,
  }) =>
      _ClientContext(
        bearerToken: bearerToken,
        oauthTokens: oauthTokens,
        timeout: timeout,
        retryConfig: retryConfig,
      );

  Future<http.Response> get(UserContext userContext, Uri uri);

  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> delete(
    UserContext userContext,
    Uri uri,
  );

  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    http.BaseRequest request,
  );
}

class _ClientContext implements ClientContext {
  _ClientContext({
    required String bearerToken,
    OAuthTokens? oauthTokens,
    required this.timeout,
    RetryConfig? retryConfig,
  })  : _clientResolver = _ClientResolver(
          oauthTokens != null
              ? OAuth1Client(
                  consumerKey: oauthTokens.consumerKey,
                  consumerSecret: oauthTokens.consumerSecret,
                  accessToken: oauthTokens.accessToken,
                  accessTokenSecret: oauthTokens.accessTokenSecret,
                )
              : null,
          OAuth2Client(bearerToken: bearerToken),
        ),
        _retryPolicy = _RetryPolicy(retryConfig);

  /// The timeout
  final Duration timeout;

  // The resolver of clients
  final _ClientResolver _clientResolver;

  /// The policy of retry.
  final _RetryPolicy _retryPolicy;

  @override
  Future<http.Response> get(
    UserContext userContext,
    Uri uri,
  ) async =>
      await _performWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.get(uri, timeout: timeout),
      );

  @override
  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    http.BaseRequest request,
  ) async =>
      await _performWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.getStream(request, timeout: timeout),
      );

  @override
  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    body,
  }) async =>
      await _performWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.post(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> delete(
    UserContext userContext,
    Uri uri,
  ) async =>
      await _performWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.delete(uri, timeout: timeout),
      );

  @override
  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  }) async =>
      await _performWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.put(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  dynamic _performWithRetryIfNecessary(
    final Client client,
    final dynamic Function(Client client) performer, {
    int retryCount = 0,
  }) async {
    try {
      return await performer.call(client);
    } on TimeoutException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        await _retryPolicy.waitWithBackOff(retryCount);

        return await _performWithRetryIfNecessary(
          client,
          performer,
          retryCount: ++retryCount,
        );
      }

      rethrow;
    }
  }
}

abstract class _ClientResolver {
  /// Returns the new instance of [_ClientResolver].
  factory _ClientResolver(
    final OAuth1Client? oauth1Client,
    final OAuth2Client oauth2Client,
  ) =>
      _$ClientResolver(
        oauth1Client,
        oauth2Client,
      );

  /// Returns resolved http client.
  Client execute(UserContext userContext);
}

class _$ClientResolver implements _ClientResolver {
  /// Returns the new instance of [_$ClientResolver].
  _$ClientResolver(this.oauth1Client, this.oauth2Client);

  /// The OAuth 1.0a client
  final OAuth1Client? oauth1Client;

  /// The OAuth 2.0 client
  final OAuth2Client oauth2Client;

  @override
  Client execute(UserContext userContext) =>
      //! If an authentication token is set, the OAuth 1.0a method is given
      //! priority.
      _shouldUseOauth1Client(userContext) ? oauth1Client! : oauth2Client;

  /// Returns true if this context should use OAuth 1.0a client, otherwise
  /// false.
  bool _shouldUseOauth1Client(final UserContext userContext) =>
      userContext == UserContext.oauth2OrOAuth1 && oauth1Client != null;
}

abstract class _RetryPolicy {
  /// Returns the new instance of [_RetryPolicy].
  factory _RetryPolicy(
    final RetryConfig? retryConfig,
  ) =>
      _$RetryPolicy(retryConfig);

  /// Returns true if the retry should be performed, otherwise false.
  bool shouldRetry(final int retryCount);

  Future waitWithBackOff(final int retryCount);
}

class _$RetryPolicy implements _RetryPolicy {
  /// Returns the new instance of [_$RetryPolicy].
  _$RetryPolicy(RetryConfig? retryConfig)
      : _retryConfig = retryConfig ?? RetryConfig(maxAttempt: 0);

  /// The configuration of retry.
  final RetryConfig _retryConfig;

  @override
  bool shouldRetry(final int retryCount) =>
      _retryConfig.maxAttempt < retryCount;

  @override
  Future waitWithBackOff(final int retryCount) async =>
      await Future.delayed(_retryConfig.interval);
}
