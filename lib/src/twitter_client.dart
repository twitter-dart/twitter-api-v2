// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:oauth1/oauth1.dart' as oauth1;

// Project imports:
import 'package:twitter_api_v2/src/twitter_exception.dart';

abstract class TwitterClient {
  factory TwitterClient({
    required String consumerKey,
    required String consumerSecret,
    required String accessToken,
    required String accessTokenSecret,
  }) =>
      _TwitterClient(
        consumerKey: consumerKey,
        consumerSecret: consumerSecret,
        accessToken: accessToken,
        accessTokenSecret: accessTokenSecret,
      );

  Future<http.Response> get(
    Uri uri, {
    Duration timeout = const Duration(seconds: 10),
  });

  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  });
}

class _TwitterClient implements TwitterClient {
  _TwitterClient({
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

  oauth1.Platform get _platform {
    return oauth1.Platform(
      'https://api.twitter.com/oauth/request_token',
      'https://api.twitter.com/oauth/authorize',
      'https://api.twitter.com/oauth/access_token',
      oauth1.SignatureMethods.hmacSha1,
    );
  }

  oauth1.ClientCredentials get _clientCredentials {
    return oauth1.ClientCredentials(
      consumerKey,
      consumerSecret,
    );
  }

  oauth1.Client get oauthClient {
    return oauth1.Client(
      _platform.signatureMethod,
      _clientCredentials,
      oauth1.Credentials(accessToken, accessTokenSecret),
    );
  }

  @override
  Future<http.Response> get(
    Uri uri, {
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      _checkResponse(
        await oauthClient.get(uri).timeout(timeout),
      );

  @override
  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      _checkResponse(
        await oauthClient
            .post(
              uri,
              headers: headers,
              body: body,
              encoding: utf8,
            )
            .timeout(timeout),
      );

  http.Response _checkResponse(final http.Response response) {
    if (response.statusCode != 200) {
      throw TwitterException(response);
    }

    return response;
  }
}
