// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_public_metrics.freezed.dart';
part 'tweet_public_metrics.g.dart';

@freezed
class TweetPublicMetrics with _$TweetPublicMetrics {
  const factory TweetPublicMetrics({
    @JsonKey(name: 'like_count') required int likeCount,
    @JsonKey(name: 'retweet_count') required int retweetCount,
    @JsonKey(name: 'reply_count') required int replyCount,
    @JsonKey(name: 'quote_count') required int quoteCount,
  }) = _TweetPublicMetrics;

  factory TweetPublicMetrics.fromJson(Map<String, Object?> json) =>
      _$TweetPublicMetricsFromJson(json);
}
