// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'space_state.dart';

part 'space_data.freezed.dart';
part 'space_data.g.dart';

@freezed
class SpaceData with _$SpaceData {
  const factory SpaceData({
    required String id,
    SpaceState? state,
    @JsonKey(name: 'host_ids') List<String>? hostIds,
    @JsonKey(name: 'speaker_ids') List<String>? speakerIds,
    @JsonKey(name: 'invited_user_ids') List<String>? invitedUserIds,
    @JsonKey(name: 'creator_id') String? creatorId,
  }) = _SpaceData;

  factory SpaceData.fromJson(Map<String, Object?> json) =>
      _$SpaceDataFromJson(json);
}
