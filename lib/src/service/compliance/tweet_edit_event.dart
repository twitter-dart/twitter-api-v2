// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'tweet_event_data.dart';

part 'tweet_edit_event.freezed.dart';
part 'tweet_edit_event.g.dart';

@freezed
class TweetEditEvent with _$TweetEditEvent {
  const factory TweetEditEvent({
    /// The tweet data of this event.
    required TweetEventData tweet,

    /// ID of the earliest tweet from which the edited tweet was derived.
    required String initialTweetId,

    /// The history of edited tweets.
    required List<String> editTweetIds,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _TweetEditEvent;

  factory TweetEditEvent.fromJson(Map<String, Object?> json) =>
      _$TweetEditEventFromJson(json);
}
