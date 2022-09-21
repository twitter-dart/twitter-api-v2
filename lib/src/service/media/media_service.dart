// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:http/http.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../base_media_service.dart';
import '../twitter_response.dart';
import 'uploaded_media_data.dart';

abstract class MediaService {
  /// Returns the new instance of [MediaService].
  factory MediaService({required core.ClientContext context}) =>
      _MediaService(context: context);

  /// Use this endpoint to upload images to Twitter.
  ///
  /// This endpoint returns a media id and media key. Twitter endpoints that
  /// accept images.
  ///
  /// For example, a media_id value can be used to create a Tweet with
  /// an attached photo using the POST statuses/update endpoint.
  ///
  /// ## Caution
  ///
  /// This method uses the v1.1 endpoint. Therefore, the arguments and returned
  /// object of this method may change in the future when the v2.0 endpoint for
  /// uploading images is released.
  ///
  /// ## Usage
  ///
  /// **This is a simple image upload endpoint** with a limited set of features.
  /// The preferred alternative is the chunked upload endpoint which supports
  /// both images and videos, provides better reliability, allows resumption of
  /// file uploads, and other important features. In the future, new features
  /// will only be supported for the chunked upload endpoint.
  ///
  /// ## Parameters
  ///
  /// - [file]: The raw binary image content being uploaded.
  ///
  /// - [additionalOwners]: A list of user IDs to set as additional owners
  ///                       allowed to use the returned media id in Tweets or
  ///                       Cards. Up to 100 additional owners may be specified.
  ///
  /// ## Endpoint Url
  ///
  /// - https://upload.twitter.com/1.1/media/upload.json
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 1.0a
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload
  Future<TwitterResponse<UploadedMediaData, void>> uploadImage({
    required File file,
    List<String>? additionalOwners,
  });
}

class _MediaService extends BaseMediaService implements MediaService {
  /// Returns the new instance of [_MediaService].
  _MediaService({required super.context});

  @override
  Future<TwitterResponse<UploadedMediaData, void>> uploadImage({
    required File file,
    List<String>? additionalOwners,
  }) async {
    final response = await super.postMultipart(
      core.UserContext.oauth1Only,
      '/1.1/media/upload.json',
      files: [
        MultipartFile.fromBytes(
          'media',
          file.readAsBytesSync(),
        ),
      ],
      queryParameters: {
        'additional_owners': additionalOwners,
      },
    );

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
      dataBuilder: UploadedMediaData.fromJson,
    );
  }
}
