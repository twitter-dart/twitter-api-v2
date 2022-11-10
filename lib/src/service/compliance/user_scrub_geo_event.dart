// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'user_event_data.dart';

part 'user_scrub_geo_event.freezed.dart';
part 'user_scrub_geo_event.g.dart';

@freezed
class UserScrubGeoEvent with _$UserScrubGeoEvent {
  const factory UserScrubGeoEvent({
    /// The user data of this event.
    required UserEventData user,

    /// The related tweet id.
    required String upToTweetId,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _UserScrubGeoEvent;

  factory UserScrubGeoEvent.fromJson(Map<String, Object?> json) =>
      _$UserScrubGeoEventFromJson(json);
}
