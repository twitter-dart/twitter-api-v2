// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_meta.freezed.dart';
part 'user_meta.g.dart';

@freezed
class UserMeta with _$UserMeta {
  const factory UserMeta({
    @JsonKey(name: 'result_count') required int resultCount,
    @JsonKey(name: 'next_token') String? nextToken,
    @JsonKey(name: 'previous_token') String? previousToken,
  }) = _UserMeta;

  factory UserMeta.fromJson(Map<String, Object?> json) =>
      _$UserMetaFromJson(json);
}
