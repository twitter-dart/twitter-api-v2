// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_mention.freezed.dart';
part 'tweet_mention.g.dart';

@freezed
class TweetMention with _$TweetMention {
  const factory TweetMention({
    required String id,
    required String username,
    required int start,
    required int end,
  }) = _TweetMention;

  factory TweetMention.fromJson(Map<String, Object?> json) =>
      _$TweetMentionFromJson(json);
}
