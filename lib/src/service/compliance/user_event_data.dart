// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event_data.freezed.dart';
part 'user_event_data.g.dart';

@freezed
class UserEventData with _$UserEventData {
  const factory UserEventData({
    /// The ID of the User triggering a compliance event.
    @JsonKey(name: 'id') required String userId,
  }) = _UserEventData;

  factory UserEventData.fromJson(Map<String, Object?> json) =>
      _$UserEventDataFromJson(json);
}
