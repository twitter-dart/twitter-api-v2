// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'package:twitter_api_v2/src/twitter_client.dart';

abstract class Service {
  Future<dynamic> get(String unencodedPath);

  Future<dynamic> post(
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  Future<dynamic> delete(String unencodedPath);
}

abstract class BaseService implements Service {
  /// Returns the new instance of [BaseService].
  BaseService({required TwitterClient client}) : _client = client;

  /// The base url
  static const _authority = 'api.twitter.com';

  /// The twitter client
  final TwitterClient _client;

  @override
  Future<dynamic> get(
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final response = await _client.get(
      Uri.https(_authority, unencodedPath, queryParameters),
    );

    return jsonDecode(response.body);
  }

  @override
  Future<dynamic> post(
    final String unencodedPath, {
    dynamic body = const {},
  }) async {
    final response = await _client.post(
      Uri.https('api.twitter.com', unencodedPath),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(body),
    );

    return jsonDecode(response.body);
  }

  @override
  Future<dynamic> delete(final String unencodedPath) async {
    final response = await _client.delete(
      Uri.https('api.twitter.com', unencodedPath),
    );

    return jsonDecode(response.body);
  }
}
