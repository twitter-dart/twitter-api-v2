// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'public_user_metrics.dart';
import 'user_entities.dart';
import 'user_withheld.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String id,
    required String name,
    required String username,
    String? description,
    String? url,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    String? location,
    @JsonKey(name: 'protected') bool? isProtected,
    @JsonKey(name: 'verified') bool? isVerified,
    @JsonKey(name: 'pinned_tweet_id') String? pinnedTweetId,
    UserEntities? entities,
    @JsonKey(name: 'public_metrics') PublicUserMetrics? publicMetrics,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    UserWithheld? withheld,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
