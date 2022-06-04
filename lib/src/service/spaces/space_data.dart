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
    String? title,
    SpaceState? state,
    @JsonKey(name: 'creator_id') String? creatorId,
    String? lang,
    @JsonKey(name: 'host_ids') List<String>? hostIds,
    @JsonKey(name: 'topic_ids') List<String>? topicIds,
    @JsonKey(name: 'speaker_ids') List<String>? speakerIds,
    @JsonKey(name: 'invited_user_ids') List<String>? invitedUserIds,
    @JsonKey(name: 'subscriber_count') int? subscriberCount,
    @JsonKey(name: 'participant_count') int? participantCount,
    @JsonKey(name: 'is_ticketed') bool? isTicketed,
    @JsonKey(name: 'scheduled_start') DateTime? scheduledStart,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _SpaceData;

  factory SpaceData.fromJson(Map<String, Object?> json) =>
      _$SpaceDataFromJson(json);
}
