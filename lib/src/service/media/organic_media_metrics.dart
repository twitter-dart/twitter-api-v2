// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organic_media_metrics.freezed.dart';
part 'organic_media_metrics.g.dart';

@freezed
class OrganicMediaMetrics with _$OrganicMediaMetrics {
  const factory OrganicMediaMetrics({
    required int playback0Count,
    required int playback25Count,
    required int playback50Count,
    required int playback75Count,
    required int playback100Count,
    required int viewCount,
  }) = _OrganicMediaMetrics;

  factory OrganicMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$OrganicMediaMetricsFromJson(json);
}
