// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'base_service.dart';
import 'common/data.dart';
import 'common/meta.dart';
import 'response/twitter_response.dart';

abstract class _MediaService {
  Future<http.Response> postMultipart(
    final core.UserContext userContext,
    final String unencodedPath, {
    List<http.MultipartFile> files = const [],
    Map<String, dynamic> queryParameters = const {},
  });

  TwitterResponse<D, M>
      transformUploadedDataResponse<D extends Data, M extends Meta>(
    http.Response response, {
    required DataBuilder<D> dataBuilder,
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
  Future<http.Response> get(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.get(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        validate: checkResponse,
      );

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

  @override
  TwitterResponse<D, M>
      transformUploadedDataResponse<D extends Data, M extends Meta>(
    http.Response response, {
    required DataBuilder<D> dataBuilder,
  }) {
    final json = core.tryJsonDecode(response, response.body);

    return super.transformSingleDataResponse(
      Response(
        jsonEncode({
          //! Convert to a data structure compliant with v2.0 specifications.
          'data': <String, dynamic>{
            'media_id_string': json['media_id_string'],
            'expires_at': DateTime.now()
                .add(Duration(seconds: json['expires_after_secs']))
                .toIso8601String(),
          },
        }),
        response.statusCode,
        headers: response.headers,
      ),
      dataBuilder: dataBuilder,
    );
  }
}
