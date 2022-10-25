// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:json_annotation/json_annotation.dart';

enum UserProfileField {
  /// `profile.name`
  @JsonValue('profile.name')
  name,

  /// `profile.location`
  @JsonValue('profile.location')
  location,

  /// `profile.description`
  @JsonValue('profile.description')
  description,

  /// `profile.url`
  @JsonValue('profile.url')
  url,

  /// `profile.profileBanner`
  @JsonValue('profile.profileBanner')
  profileBanner,

  /// `profile.profileBanner.url`
  @JsonValue('profile.profileBanner.url')
  profileBannerUrl,

  /// `profile.profileImage`
  @JsonValue('profile.profileImage')
  profileImage,

  /// `profile.profileImage.url`
  @JsonValue('profile.profileImage.url')
  profileImageUrl,
}
