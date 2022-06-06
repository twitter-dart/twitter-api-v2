// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_tweet_metrics.freezed.dart';
part 'public_tweet_metrics.g.dart';

@freezed
class PublicTweetMetrics with _$PublicTweetMetrics {
  const factory PublicTweetMetrics({
    required int likeCount,
    required int retweetCount,
    required int replyCount,
    required int quoteCount,
  }) = _PublicTweetMetrics;

  factory PublicTweetMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicTweetMetricsFromJson(json);
}
