// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'user_event_data.dart';

part 'user_withheld_event.freezed.dart';
part 'user_withheld_event.g.dart';

@freezed
class UserWithheldEvent with _$UserWithheldEvent {
  const factory UserWithheldEvent({
    /// The user data of this event.
    required UserEventData user,

    /// List of countries applied withheld.
    required List<core.ISOAlpha2Country> withheldInCountries,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _UserWithheldEvent;

  factory UserWithheldEvent.fromJson(Map<String, Object?> json) =>
      _$UserWithheldEventFromJson(json);
}
