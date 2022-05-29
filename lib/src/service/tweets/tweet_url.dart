// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_url.freezed.dart';
part 'tweet_url.g.dart';

@freezed
class TweetUrl with _$TweetUrl {
  const factory TweetUrl({
    required int start,
    required int end,
    required String url,
    @JsonKey(name: 'expanded_url') required String expandedUrl,
    @JsonKey(name: 'display_url') required String displayUrl,
    @JsonKey(name: 'media_key') String? mediaKey,
  }) = _TweetUrl;

  factory TweetUrl.fromJson(Map<String, Object?> json) =>
      _$TweetUrlFromJson(json);
}
