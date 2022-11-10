// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'tweet_event_data.dart';

part 'tweet_event.freezed.dart';
part 'tweet_event.g.dart';

@freezed
class TweetEvent with _$TweetEvent {
  const factory TweetEvent({
    /// The tweet data of this event.
    required TweetEventData tweet,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _TweetEvent;

  factory TweetEvent.fromJson(Map<String, Object?> json) =>
      _$TweetEventFromJson(json);
}
