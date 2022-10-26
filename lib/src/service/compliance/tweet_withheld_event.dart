// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_core/twitter_api_core.dart';

// Project imports:
import 'tweet_event_data.dart';

part 'tweet_withheld_event.freezed.dart';
part 'tweet_withheld_event.g.dart';

@freezed
class TweetWithheldEvent with _$TweetWithheldEvent {
  const factory TweetWithheldEvent({
    /// The tweet data of this event.
    required TweetEventData tweet,

    /// List of countries applied withheld.
    required List<ISOAlpha2Country> withheldInCountries,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _TweetWithheldEvent;

  factory TweetWithheldEvent.fromJson(Map<String, Object?> json) =>
      _$TweetWithheldEventFromJson(json);
}
