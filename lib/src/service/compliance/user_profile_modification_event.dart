// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'user_event_data.dart';
import 'user_profile_field.dart';

part 'user_profile_modification_event.freezed.dart';
part 'user_profile_modification_event.g.dart';

@freezed
class UserProfileModificationEvent with _$UserProfileModificationEvent {
  const factory UserProfileModificationEvent({
    /// The user data of this event.
    required UserEventData user,

    /// Indicates what in the User profile changed.
    required UserProfileField profileField,

    /// The new value for [profileField].
    required String newValue,

    /// Time of when event happened.
    required DateTime eventAt,
  }) = _UserProfileModificationEvent;

  factory UserProfileModificationEvent.fromJson(Map<String, Object?> json) =>
      _$UserProfileModificationEventFromJson(json);
}
