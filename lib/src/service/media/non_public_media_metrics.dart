// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'non_public_media_metrics.freezed.dart';
part 'non_public_media_metrics.g.dart';

@freezed
class NonPublicMediaMetrics with _$NonPublicMediaMetrics {
  const factory NonPublicMediaMetrics({
    required int playback0Count,
    required int playback25Count,
    required int playback50Count,
    required int playback75Count,
    required int playback100Count,
  }) = _NonPublicMediaMetrics;

  factory NonPublicMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$NonPublicMediaMetricsFromJson(json);
}
