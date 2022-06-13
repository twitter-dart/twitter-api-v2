// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_media_metrics.freezed.dart';
part 'public_media_metrics.g.dart';

@freezed
class PublicMediaMetrics with _$PublicMediaMetrics {
  const factory PublicMediaMetrics({
    required int viewCount,
  }) = _PublicMediaMetrics;

  factory PublicMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicMediaMetricsFromJson(json);
}
