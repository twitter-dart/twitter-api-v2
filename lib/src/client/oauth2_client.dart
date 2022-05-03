// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:twitter_api_v2/src/client/client.dart';
import 'package:twitter_api_v2/src/twitter_exception.dart';

class OAuth2Client implements Client {
  /// Returns the new instance of [OAuth2Client].
  OAuth2Client({required String bearerToken}) : _bearerToken = bearerToken;

  /// The token to authenticate OAuth 2.0
  final String _bearerToken;

  @override
  Future<http.Response> get(
    Uri uri, {
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      _checkResponse(
        await http.get(
          uri,
          headers: {'Authorization': 'Bearer $_bearerToken'},
        ).timeout(timeout),
      );

  @override
  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      _checkResponse(
        await http
            .post(
              uri,
              headers: {'Authorization': 'Bearer $_bearerToken'}
                ..addAll(headers),
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
      _checkResponse(
        await http
            .delete(
              uri,
              headers: {'Authorization': 'Bearer $_bearerToken'}
                ..addAll(headers),
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
