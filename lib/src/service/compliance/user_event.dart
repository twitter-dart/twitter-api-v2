// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'user_event_data.dart';

part 'user_event.freezed.dart';
part 'user_event.g.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent({
    /// The user data of this event.
    required UserEventData user,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _UserEvent;

  factory UserEvent.fromJson(Map<String, Object?> json) =>
      _$UserEventFromJson(json);
}
