// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';

abstract class Service {
  Future<dynamic> get(UserContext userContext, String unencodedPath);

  Future<dynamic> post(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  Future<dynamic> delete(UserContext userContext, String unencodedPath);
}

abstract class BaseService implements Service {
  /// Returns the new instance of [BaseService].
  BaseService({required ClientContext context}) : _context = context;

  /// The base url
  static const _authority = 'api.twitter.com';

  /// The twitter client
  final ClientContext _context;

  @override
  Future<dynamic> get(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final response = await _context.get(
      userContext,
      Uri.https(_authority, unencodedPath, queryParameters),
    );

    return jsonDecode(response.body);
  }

  @override
  Future<dynamic> post(
    final UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async {
    final response = await _context.post(
      userContext,
      Uri.https('api.twitter.com', unencodedPath),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(body),
    );

    return jsonDecode(response.body);
  }

  @override
  Future<dynamic> delete(
    final UserContext userContext,
    final String unencodedPath,
  ) async {
    final response = await _context.delete(
      userContext,
      Uri.https('api.twitter.com', unencodedPath),
    );

    return jsonDecode(response.body);
  }
}
