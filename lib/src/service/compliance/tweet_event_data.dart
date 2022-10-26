// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_event_data.freezed.dart';
part 'tweet_event_data.g.dart';

@freezed
class TweetEventData with _$TweetEventData {
  const factory TweetEventData({
    /// The ID of the Tweet triggering a compliance event.
    @JsonKey(name: 'id') required String tweetId,

    /// The ID of the author of a Tweet triggering a compliance event.
    String? authorId,
  }) = _TweetEventData;

  factory TweetEventData.fromJson(Map<String, Object?> json) =>
      _$TweetEventDataFromJson(json);
}
