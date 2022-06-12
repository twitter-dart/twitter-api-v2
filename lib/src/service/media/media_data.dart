// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'media_type.dart';
import 'non_public_media_metrics.dart';
import 'organic_media_metrics.dart';
import 'promoted_media_metrics.dart';
import 'public_media_metrics.dart';

part 'media_data.freezed.dart';
part 'media_data.g.dart';

@freezed
class MediaData with _$MediaData {
  const factory MediaData({
    @JsonKey(name: 'media_key') required String key,
    required MediaType type,
    String? url,
    int? durationMs,
    int? height,
    NonPublicMediaMetrics? nonPublicMetrics,
    OrganicMediaMetrics? organicMetrics,
    String? previewImageUrl,
    PromotedMediaMetrics? promotedMetrics,
    PublicMediaMetrics? publicMetrics,
    int? width,
    String? altText,
  }) = _MediaData;

  factory MediaData.fromJson(Map<String, Object?> json) =>
      _$MediaDataFromJson(json);
}
