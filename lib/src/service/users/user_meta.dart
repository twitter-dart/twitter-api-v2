// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_meta.freezed.dart';
part 'user_meta.g.dart';

@freezed
class UserMeta with _$UserMeta {
  const factory UserMeta({
    required int resultCount,
    String? nextToken,
    String? previousToken,
  }) = _UserMeta;

  factory UserMeta.fromJson(Map<String, Object?> json) =>
      _$UserMetaFromJson(json);
}
