// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'base_service.dart';
import 'common/data.dart';
import 'common/locale.dart';
import 'common/meta.dart';
import 'response/twitter_response.dart';

abstract class _MediaService {
  Future<core.Response> postMultipart(
    final core.UserContext userContext,
    final String unencodedPath, {
    List<core.MultipartFile> files = const [],
    Map<String, dynamic> queryParameters = const {},
  });

  TwitterResponse<D, M>
      transformUploadedDataResponse<D extends Data, M extends Meta>(
    core.Response response, {
    Locale? locale,
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
  Future<core.Response> get(
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
  Future<core.Response> post(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    core.Response Function(core.Response response)? validate,
  }) async =>
      await _helper.post(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<core.Response> postMultipart(
    final core.UserContext userContext,
    final String unencodedPath, {
    List<core.MultipartFile> files = const [],
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
    core.Response response, {
    Locale? locale,
    required DataBuilder<D> dataBuilder,
  }) {
    final json = core.tryJsonDecode(response, response.body);

    final uploadedMedia = <String, dynamic>{
      'media_id_string': json['media_id_string'],
      'expires_at': DateTime.now()
          .add(Duration(seconds: json['expires_after_secs']))
          .toIso8601String(),
    };

    if (locale != null) {
      uploadedMedia['locale'] = locale.toJson();
    }

    //! Convert to a data structure compliant with v2 specs.
    return super.transformSingleDataResponse(
      core.Response(
        jsonEncode({
          'data': uploadedMedia,
        }),
        response.statusCode,
        headers: response.headers,
      ),
      dataBuilder: dataBuilder,
    );
  }
}
