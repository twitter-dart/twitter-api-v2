// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploaded_media_data.freezed.dart';
part 'uploaded_media_data.g.dart';

/// This object represents uploaded media data.
@freezed
class UploadedMediaData with _$UploadedMediaData {
  const factory UploadedMediaData({
    /// The identifier for the uploaded media.
    @JsonKey(name: 'media_id_string') required String mediaId,

    /// The date and time this media will expire.
    required DateTime expiresAt,
  }) = _UploadedMediaData;

  factory UploadedMediaData.fromJson(Map<String, Object?> json) =>
      _$UploadedMediaDataFromJson(json);
}
