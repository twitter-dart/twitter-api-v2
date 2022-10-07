// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:http/http.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../base_media_service.dart';
import '../twitter_response.dart';
import 'media_category.dart';
import 'upload_event.dart';
import 'upload_state.dart';
import 'uploaded_media_data.dart';

abstract class MediaService {
  /// Returns the new instance of [MediaService].
  factory MediaService({required core.ClientContext context}) =>
      _MediaService(context: context);

  /// Use this endpoint to upload images to Twitter.
  ///
  /// This endpoint is suited for simple image uploads with small file sizes
  /// and is faster than [uploadMedia]. However, this endpoint has restrictions
  /// on upload size and format, so use [uploadMedia] when uploading large
  /// files or videos.
  ///
  /// Also, media with a file size of 0 cannot be uploaded.
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

  /// The integrated endpoint for uploading images, GIFs, and videos to Twitter.
  ///
  /// This endpoint allows large files to be uploaded, divided into the
  /// appropriate size and securely uploaded to Twitter. If the size of the file
  /// to be uploaded is large, it may take some time for the upload to
  /// complete, but this method internally polls for any waiting if it's
  /// required, and the caller of this method does not need to be aware of the
  /// status of the upload.
  ///
  /// ## Caution
  ///
  /// This method uses the v1.1 endpoint. Therefore, the arguments and returned
  /// object of this method may change in the future when the v2.0 endpoint for
  /// uploading images is released.
  ///
  /// ## Parameters
  ///
  /// - [file]: The raw binary media content (image, gif, video) being uploaded.
  ///
  /// - [additionalOwners]: A list of user IDs to set as additional owners
  ///                       allowed to use the returned media id in Tweets or
  ///                       Cards. Up to 100 additional owners may be specified.
  ///
  /// - [onProgress]: This callback function allows the user to check the
  ///                 progress of an upload when a large volume of media is
  ///                 uploaded. This callback function is called each time after
  ///                 polling the Twitter upload server. If the upload fails,
  ///                 this callback function is not called.
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
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-init
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-append
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-finalize
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/get-media-upload-status
  Future<TwitterResponse<UploadedMediaData, void>> uploadMedia({
    required File file,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
  });
}

class _MediaService extends BaseMediaService implements MediaService {
  /// Returns the new instance of [_MediaService].
  _MediaService({required super.context});

  /// The maximum number of chunks per time (bytes).
  static const _maxChunkSize = 500000;

  @override
  Future<TwitterResponse<UploadedMediaData, void>> uploadImage({
    required File file,
    List<String>? additionalOwners,
  }) async =>
      super.transformUploadedDataResponse(
        await _uploadImage(
          file: file,
          additionalOwners: additionalOwners,
        ),
        dataBuilder: UploadedMediaData.fromJson,
      );

  @override
  Future<TwitterResponse<UploadedMediaData, void>> uploadMedia({
    required File file,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
  }) async =>
      super.transformUploadedDataResponse(
        await _uploadMedia(
          file: file,
          additionalOwners: additionalOwners,
          onProgress: onProgress,
        ),
        dataBuilder: UploadedMediaData.fromJson,
      );

  Future<Response> _uploadImage({
    required File file,
    List<String>? additionalOwners,
  }) async {
    final mediaBytes = file.readAsBytesSync();
    if (mediaBytes.isEmpty) {
      throw core.TwitterUploadException(
        file,
        'Cannot upload because the file size is 0.',
      );
    }

    final mimeType = _resolveMimeType(file);
    if (!mimeType.startsWith('image')) {
      throw core.TwitterUploadException(
        file,
        'Only image uploads are allowed from this endpoint. '
        'Use "uploadMedia" if you need to upload videos.',
      );
    }

    return await super.postMultipart(
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
  }

  Future<Response> _uploadMedia({
    required File file,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
  }) async {
    final mediaBytes = file.readAsBytesSync();
    if (mediaBytes.isEmpty) {
      throw core.TwitterUploadException(
        file,
        'Cannot upload because the file size is 0.',
      );
    }

    final initResponse = await _initUpload(
      mediaBytes: mediaBytes,
      mediaMimeType: _resolveMimeType(file),
      additionalOwners: additionalOwners,
    );

    final initJson = core.tryJsonDecode(initResponse, initResponse.body);
    final mediaId = initJson['media_id_string'];

    await _appendChunkedUploadMedia(mediaBytes, mediaId);

    await _pollUploadStatus(
      await _finalizeUpload(mediaId: mediaId),
      file,
      onProgress,
    );

    return initResponse;
  }

  Future<void> _appendChunkedUploadMedia(
    final Uint8List mediaBytes,
    final String mediaId,
  ) async {
    final chunkedMedia = _splitMediaFile(mediaBytes);

    for (var index = 0; index < chunkedMedia.length; index++) {
      await _appendUploadMedia(
        mediaId: mediaId,
        media: chunkedMedia[index],
        segmentIndex: index,
      );
    }
  }

  Future<Response> _initUpload({
    required List<int> mediaBytes,
    required String mediaMimeType,
    List<String>? additionalOwners,
  }) async =>
      await super.post(
        core.UserContext.oauth1Only,
        '/1.1/media/upload.json',
        queryParameters: {
          'command': 'INIT',
          'total_bytes': mediaBytes.length,
          'media_type': mediaMimeType,
          'media_category': MediaCategory.fromMimeType(mediaMimeType),
          'additional_owners': additionalOwners,
        },
      );

  Future<Response> _appendUploadMedia({
    required String mediaId,
    required List<int> media,
    required int segmentIndex,
  }) async =>
      await super.postMultipart(
        core.UserContext.oauth1Only,
        '/1.1/media/upload.json',
        files: [
          MultipartFile.fromBytes('media', media),
        ],
        queryParameters: {
          'command': 'APPEND',
          'media_id': mediaId,
          'segment_index': segmentIndex,
        },
        //! No BODY is returned from this endpoint.
        checkJsonFormat: false,
      );

  Future<Response> _finalizeUpload({
    required String mediaId,
  }) async =>
      await super.post(
        core.UserContext.oauth1Only,
        '/1.1/media/upload.json',
        queryParameters: {
          'command': 'FINALIZE',
          'media_id': mediaId,
        },
      );

  Future<Response> _lookupUploadStatus({
    required String mediaId,
  }) async =>
      await super.get(
        core.UserContext.oauth1Only,
        '/1.1/media/upload.json',
        queryParameters: {
          'command': 'STATUS',
          'media_id': mediaId,
        },
      );

  Future<Map<String, dynamic>> _pollUploadStatus(
    final Response finalizedResponse,
    final File file,
    final Function(UploadEvent event)? onProgress,
  ) async {
    final finalizedJson = core.tryJsonDecode(
      finalizedResponse,
      finalizedResponse.body,
    );

    final processingInfo = finalizedJson['processing_info'];

    //! Field set only if polling is required.
    if (processingInfo != null) {
      if (processingInfo['state'] == 'failed') {
        throw core.TwitterUploadException(
          file,
          'Failed to upload a file. Please check the error message '
          'in HTTP response.',
          finalizedResponse,
        );
      }

      if (processingInfo['state'] == 'pending') {
        final uploadedResponse = await _waitForUploadCompletion(
          mediaId: finalizedJson['media_id_string'],
          delaySeconds: processingInfo['check_after_secs'],
          file: file,
          onProgress: onProgress,
        );

        return core.tryJsonDecode(
          uploadedResponse,
          uploadedResponse.body,
        );
      }
    }

    //! The upload is completed when finalized is called.
    return core.tryJsonDecode(
      finalizedResponse,
      finalizedResponse.body,
    );
  }

  Future<Response> _waitForUploadCompletion({
    required String mediaId,
    required int delaySeconds,
    required File file,
    required Function(UploadEvent event)? onProgress,
  }) async {
    await Future<void>.delayed(Duration(seconds: delaySeconds));

    final response = await _lookupUploadStatus(mediaId: mediaId);
    final status = core.tryJsonDecode(response, response.body);

    final processingInfo = status['processing_info'];

    if (processingInfo != null) {
      if (processingInfo['state'] == 'failed') {
        throw core.TwitterUploadException(
          file,
          'Failed to upload a file. Please check the error message '
          'in HTTP response.',
          response,
        );
      }

      final state = processingInfo['state'];

      await onProgress?.call(
        UploadEvent(
          UploadStateExtension.valueOf(state),
          processingInfo['progress_percent'],
        ),
      );

      if (state == 'in_progress') {
        return _waitForUploadCompletion(
          mediaId: mediaId,
          delaySeconds: processingInfo['check_after_secs'],
          file: file,
          onProgress: onProgress,
        );
      }
    }

    return response;
  }

  List<List<int>> _splitMediaFile(final List<int> mediaBytes) {
    final chunks = <List<int>>[];
    Iterable<int> chunk;

    do {
      final remainingEntries = mediaBytes.sublist(
        chunks.length * _maxChunkSize,
      );

      if (remainingEntries.isEmpty) {
        break;
      }

      chunk = remainingEntries.take(_maxChunkSize);
      chunks.add(List<int>.from(chunk));
    } while (chunk.length == _maxChunkSize);

    return chunks;
  }

  String _resolveMimeType(final File file) {
    final mediaMimeType = core.lookupMimeType(file.path);

    if (mediaMimeType == null) {
      throw core.TwitterUploadException(
        file,
        'Could not identify the Mime type of the file.',
      );
    }

    if (!mediaMimeType.startsWith('image') &&
        !mediaMimeType.startsWith('video')) {
      throw core.TwitterUploadException(
        file,
        'Unsupported Mime type [$mediaMimeType].',
      );
    }

    return mediaMimeType;
  }
}
