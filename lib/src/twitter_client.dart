// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:twitter_api_v2/src/twitter_exception.dart';

/// A function used to transform the response.
///
/// To prevent large computations from blocking the thread, response bodies are
/// decoded in an isolate by default.
typedef TransformResponse<T> = FutureOr<T> Function(http.Response response);

abstract class TwitterClient {
  factory TwitterClient({required String token}) =>
      _TwitterClient(token: token);

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
  _TwitterClient({required this.token});

  /// The bearer token used to authenticate requests
  final String token;

  @override
  Future<http.Response> get(
    Uri uri, {
    Duration timeout = const Duration(seconds: 10),
  }) async =>
      _checkResponse(
        await http.get(
          uri,
          headers: {'Authorization': 'Bearer $token'},
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
              headers: headers..addAll({'Authorization': 'Bearer $token'}),
              body: body,
              encoding: utf8,
            )
            .timeout(timeout),
      );

  http.Response _checkResponse(final http.Response response) {
    if (response.statusCode != 200) {
      throw TwitterException();
    }

    return response;
  }
}
