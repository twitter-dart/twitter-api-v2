// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_tag.freezed.dart';
part 'tweet_tag.g.dart';

@freezed
class TweetTag with _$TweetTag {
  const factory TweetTag({
    required int start,
    required int end,
    required String tag,
  }) = _TweetTag;

  factory TweetTag.fromJson(Map<String, Object?> json) =>
      _$TweetTagFromJson(json);
}
