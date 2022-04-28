// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_meta.freezed.dart';
part 'tweet_meta.g.dart';

@freezed
class TweetMeta with _$TweetMeta {
  const factory TweetMeta({
    @JsonKey(name: 'newest_id') required String newestId,
    @JsonKey(name: 'oldest_id') required String oldestId,
    @JsonKey(name: 'result_count') required int resultCount,
  }) = _TweetMeta;

  factory TweetMeta.fromJson(Map<String, Object?> json) =>
      _$TweetMetaFromJson(json);
}
