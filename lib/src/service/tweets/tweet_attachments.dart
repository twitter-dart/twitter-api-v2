// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_attachments.freezed.dart';
part 'tweet_attachments.g.dart';

@freezed
class TweetAttachments with _$TweetAttachments {
  const factory TweetAttachments({
    List<String>? mediaKeys,
    List<String>? pollIds,
  }) = _TweetAttachments;

  factory TweetAttachments.fromJson(Map<String, Object?> json) =>
      _$TweetAttachmentsFromJson(json);
}
