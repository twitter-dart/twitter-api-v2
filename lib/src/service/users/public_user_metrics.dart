// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_metrics.freezed.dart';
part 'public_user_metrics.g.dart';

@freezed
class PublicUserMetrics with _$PublicUserMetrics {
  const factory PublicUserMetrics({
    @JsonKey(name: 'followers_count') required int followersCount,
    @JsonKey(name: 'following_count') required int followingCount,
    @JsonKey(name: 'tweet_count') required int tweetCount,
    @JsonKey(name: 'listed_count') required int listedCount,
  }) = _PublicUserMetrics;

  factory PublicUserMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicUserMetricsFromJson(json);
}
