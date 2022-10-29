// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_core/twitter_api_core.dart';

part 'user_withheld.freezed.dart';
part 'user_withheld.g.dart';

@freezed
class UserWithheld with _$UserWithheld {
  const factory UserWithheld({
    /// Provides a list of countries where this user is not available.
    @JsonKey(name: 'country_codes') required List<WithheldCountry> countries,
  }) = _UserWithheld;

  factory UserWithheld.fromJson(Map<String, Object?> json) =>
      _$UserWithheldFromJson(json);
}
