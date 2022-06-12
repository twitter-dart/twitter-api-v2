// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promoted_media_metrics.freezed.dart';
part 'promoted_media_metrics.g.dart';

@freezed
class PromotedMediaMetrics with _$PromotedMediaMetrics {
  const factory PromotedMediaMetrics({
    required int playback0Count,
    required int playback25Count,
    required int playback50Count,
    required int playback75Count,
    required int playback100Count,
    required int viewCount,
  }) = _PromotedMediaMetrics;

  factory PromotedMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$PromotedMediaMetricsFromJson(json);
}
