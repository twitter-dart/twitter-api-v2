// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import '../twitter_exception.dart';

abstract class Client {
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

  Future<http.Response> delete(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  });

  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    Duration timeout = const Duration(seconds: 10),
  });

  http.Response checkResponse(final http.Response response) {
    final statusCode = response.statusCode;
    if (200 <= statusCode && statusCode <= 299) {
      return response;
    }

    throw TwitterException(response);
  }
}
