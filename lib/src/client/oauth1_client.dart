// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:oauth1/oauth1.dart' as oauth1;

// Project imports:
import 'client.dart';

class OAuth1Client extends Client {
  OAuth1Client({
    required String consumerKey,
    required String consumerSecret,
    required String accessToken,
    required String accessTokenSecret,
  })  : _consumerKey = consumerKey,
        _consumerSecret = consumerSecret,
        _accessToken = accessToken,
        _accessTokenSecret = accessTokenSecret;

  /// The key to authenticate OAuth 1.0a
  final String _consumerKey;

  /// The key secret to authenticate OAuth 1.0a
  final String _consumerSecret;

  /// The token to authenticate OAuth 1.0a
  final String _accessToken;

  /// The token secret to authenticate OAuth 1.0a
  final String _accessTokenSecret;

  oauth1.Platform get _platform => oauth1.Platform(
        'https://api.twitter.com/oauth/request_token',
        'https://api.twitter.com/oauth/authorize',
        'https://api.twitter.com/oauth/access_token',
        oauth1.SignatureMethods.hmacSha1,
      );

  oauth1.ClientCredentials get _clientCredentials => oauth1.ClientCredentials(
        _consumerKey,
        _consumerSecret,
      );

  oauth1.Client get oauthClient => oauth1.Client(
        _platform.signatureMethod,
        _clientCredentials,
        oauth1.Credentials(_accessToken, _accessTokenSecret),
      );

  @override
  Future<http.Response> get(
    Uri uri, {
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      checkResponse(
        await oauthClient.get(uri).timeout(timeout),
      );

  @override
  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      checkResponse(
        await oauthClient
            .post(
              uri,
              headers: headers,
              body: body,
              encoding: utf8,
            )
            .timeout(timeout),
      );

  @override
  Future<http.Response> delete(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      checkResponse(
        await oauthClient
            .delete(
              uri,
              headers: headers,
              body: body,
              encoding: utf8,
            )
            .timeout(timeout),
      );

  @override
  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      checkResponse(
        await oauthClient
            .put(
              uri,
              headers: headers,
              body: body,
              encoding: utf8,
            )
            .timeout(timeout),
      );

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request, {
    Map<String, String> headers = const {},
    Duration timeout = const Duration(seconds: 10),
  }) async {
    request.headers.addAll(headers);

    return checkResponse(
      await oauthClient.send(request).timeout(timeout),
    );
  }
}
