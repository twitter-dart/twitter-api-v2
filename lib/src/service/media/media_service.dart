// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../base_media_service.dart';
import '../response/twitter_response.dart';
import 'media_category.dart';
import 'upload_error.dart';
import 'upload_event.dart';
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
  /// If an error occurs when uploading media, [core.TwitterUploadException] is
  /// always thrown.
  ///
  /// ## Usage
  ///
  /// This is a simple image upload endpoint with a limited set of features.
  /// The preferred alternative is the chunked upload endpoint which supports
  /// both images and videos, provides better reliability, allows resumption of
  /// file uploads, and other important features. In the future, new features
  /// will only be supported for the chunked upload endpoint.
  ///
  /// - See [uploadMedia] for the chunked upload.
  ///
  /// ## Parameters
  ///
  /// - [file]: The raw binary image content being uploaded.
  ///
  /// - [altText]: Additional descriptive text to be added to images and GIFs.
  ///              The text must be <= 1000 chars.
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
    String? altText,
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
  /// If an error occurs when uploading media, [core.TwitterUploadException] is
  /// always thrown.
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
  /// - [altText]: Additional descriptive text to be added to images and GIFs.
  ///              Currently, this option is available only for images and GIFs;
  ///              if the media file being uploaded is a video, this option
  ///              will be ignored at runtime. Also, the text must be <= 1000
  ///              chars.
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
  /// - [onFailed]: This callback function is called when the progress of
  ///               a media upload is polled and the media upload has failed.
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
    String? altText,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
    Function(UploadError error)? onFailed,
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
    String? altText,
    List<String>? additionalOwners,
  }) async {
    final response = super.transformUploadedDataResponse(
      await _uploadImage(
        file: file,
        altText: altText,
        additionalOwners: additionalOwners,
      ),
      dataBuilder: UploadedMediaData.fromJson,
    );

    if (altText?.isNotEmpty ?? false) {
      await _createMetaData(
        mediaId: response.data.id,
        altText: altText!,
      );
    }

    return response;
  }

  @override
  Future<TwitterResponse<UploadedMediaData, void>> uploadMedia({
    required File file,
    String? altText,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
    Function(UploadError error)? onFailed,
  }) async =>
      super.transformUploadedDataResponse(
        await _uploadMedia(
          file: file,
          altText: altText,
          additionalOwners: additionalOwners,
          onProgress: onProgress,
          onFailed: onFailed,
        ),
        dataBuilder: UploadedMediaData.fromJson,
      );

  Future<core.Response> _uploadImage({
    required File file,
    String? altText,
    List<String>? additionalOwners,
  }) async {
    final mediaBytes = file.readAsBytesSync();
    if (mediaBytes.isEmpty) {
      throw ArgumentError('Cannot upload because the file size is 0.');
    }

    if (altText != null && altText.length > 1000) {
      throw ArgumentError.value(
        altText.length,
        'altText.length',
        'Alt text must be <= 1000 chars.',
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
        core.MultipartFile.fromBytes(
          'media',
          file.readAsBytesSync(),
        ),
      ],
      queryParameters: {
        'additional_owners': additionalOwners,
      },
    );
  }

  Future<core.Response> _uploadMedia({
    required File file,
    String? altText,
    List<String>? additionalOwners,
    Function(UploadEvent event)? onProgress,
    Function(UploadError error)? onFailed,
  }) async {
    final mediaBytes = file.readAsBytesSync();
    if (mediaBytes.isEmpty) {
      throw ArgumentError('Cannot upload because the file size is 0.');
    }

    if (altText != null && altText.length > 1000) {
      throw ArgumentError.value(
        altText.length,
        'altText.length',
        'Alt text must be <= 1000 chars.',
      );
    }

    final mimeType = _resolveMimeType(file);

    final initResponse = await _initUpload(
      mediaBytes: mediaBytes,
      mediaMimeType: mimeType,
      additionalOwners: additionalOwners,
    );

    final initJson = core.tryJsonDecode(initResponse, initResponse.body);
    final mediaId = initJson['media_id_string'];

    await onProgress?.call(
      UploadEventExtension.ofPreparing(),
    );

    await _appendChunkedUploadMedia(mediaBytes, mediaId);

    await _pollUploadStatus(
      await _finalizeUpload(mediaId: mediaId),
      file,
      onProgress,
      onFailed,
    );

    //! Only supports for Images and GIFs.
    if (mimeType.startsWith('image') && (altText?.isNotEmpty ?? false)) {
      await _createMetaData(
        mediaId: mediaId,
        altText: altText!,
      );
    }

    await onProgress?.call(
      UploadEventExtension.ofCompleted(),
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

  Future<core.Response> _initUpload({
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

  Future<core.Response> _appendUploadMedia({
    required String mediaId,
    required List<int> media,
    required int segmentIndex,
  }) async =>
      await super.postMultipart(
        core.UserContext.oauth1Only,
        '/1.1/media/upload.json',
        files: [
          core.MultipartFile.fromBytes('media', media),
        ],
        queryParameters: {
          'command': 'APPEND',
          'media_id': mediaId,
          'segment_index': segmentIndex,
        },
      );

  Future<core.Response> _finalizeUpload({
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

  Future<core.Response> _lookupUploadStatus({
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

  Future<core.Response> _createMetaData({
    required String mediaId,
    required String altText,
  }) async =>
      super.post(
        core.UserContext.oauth1Only,
        '/1.1/media/metadata/create.json',
        body: {
          'media_id': mediaId,
          'alt_text': {
            'text': altText,
          }
        },
      );

  Future<Map<String, dynamic>> _pollUploadStatus(
    final core.Response finalizedResponse,
    final File file,
    final Function(UploadEvent event)? onProgress,
    final Function(UploadError error)? onFailed,
  ) async {
    final finalizedJson = core.tryJsonDecode(
      finalizedResponse,
      finalizedResponse.body,
    );

    final processingInfo = finalizedJson['processing_info'];

    //! Field set only if polling is required.
    if (processingInfo != null) {
      if (processingInfo['state'] == 'failed') {
        await onFailed?.call(
          UploadError.fromJson(
            processingInfo['error'],
          ),
        );

        throw core.TwitterUploadException(
          file,
          'The media file is in an invalid format.',
          finalizedResponse,
        );
      }

      if (processingInfo['state'] == 'pending') {
        final uploadedResponse = await _waitForUploadCompletion(
          mediaId: finalizedJson['media_id_string'],
          delaySeconds: processingInfo['check_after_secs'],
          file: file,
          onProgress: onProgress,
          onFailed: onFailed,
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

  Future<core.Response> _waitForUploadCompletion({
    required String mediaId,
    required int delaySeconds,
    required File file,
    required Function(UploadEvent event)? onProgress,
    required Function(UploadError error)? onFailed,
  }) async {
    await Future<void>.delayed(Duration(seconds: delaySeconds));

    final response = await _lookupUploadStatus(mediaId: mediaId);
    final status = core.tryJsonDecode(response, response.body);

    final processingInfo = status['processing_info'];

    if (processingInfo != null) {
      if (processingInfo['state'] == 'failed') {
        await onFailed?.call(
          UploadError.fromJson(
            processingInfo['error'],
          ),
        );

        throw core.TwitterUploadException(
          file,
          'The media file is in an invalid format.',
          response,
        );
      }

      if (processingInfo['state'] == 'in_progress') {
        await onProgress?.call(
          UploadEventExtension.ofInProgress(
            processingInfo['progress_percent'],
          ),
        );

        return _waitForUploadCompletion(
          mediaId: mediaId,
          delaySeconds: processingInfo['check_after_secs'],
          file: file,
          onProgress: onProgress,
          onFailed: onFailed,
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
