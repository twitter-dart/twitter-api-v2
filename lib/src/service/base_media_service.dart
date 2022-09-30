// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:http/http.dart' as http;
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'base_service.dart';

abstract class _MediaService {
  Future<http.Response> postMultipart(
    final core.UserContext userContext,
    final String unencodedPath, {
    List<http.MultipartFile> files = const [],
    Map<String, dynamic> queryParameters = const {},
  });
}

abstract class BaseMediaService extends BaseService implements _MediaService {
  /// Returns the new instance of [BaseMediaService].
  BaseMediaService({required super.context})
      : _helper = core.ServiceHelper(
          authority: 'upload.twitter.com',
          context: context,
        );

  final core.ServiceHelper _helper;

  @override
  Future<http.Response> post(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    http.Response Function(http.Response response)? validate,
  }) async =>
      await _helper.post(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<http.Response> postMultipart(
    final core.UserContext userContext,
    final String unencodedPath, {
    List<http.MultipartFile> files = const [],
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.postMultipart(
        userContext,
        unencodedPath,
        files: files,
        queryParameters: queryParameters,
        validate: checkResponse,
      );
}
