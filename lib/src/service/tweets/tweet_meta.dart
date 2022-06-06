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
    String? newestId,
    String? oldestId,
    int? resultCount,
    String? nextToken,
    String? previousToken,
  }) = _TweetMeta;

  factory TweetMeta.fromJson(Map<String, Object?> json) =>
      _$TweetMetaFromJson(json);
}
