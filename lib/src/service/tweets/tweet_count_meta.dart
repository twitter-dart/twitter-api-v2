// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_count_meta.freezed.dart';
part 'tweet_count_meta.g.dart';

@freezed
class TweetCountMeta with _$TweetCountMeta {
  const factory TweetCountMeta({
    @JsonKey(name: 'total_tweet_count') required int total,
    @JsonKey(name: 'next_token') String? nextToken,
  }) = _TweetCountMeta;

  factory TweetCountMeta.fromJson(Map<String, Object?> json) =>
      _$TweetCountMetaFromJson(json);
}
