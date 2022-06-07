// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention.freezed.dart';
part 'mention.g.dart';

@freezed
class Mention with _$Mention {
  const factory Mention({
    String? id,
    required String username,
    required int start,
    required int end,
  }) = _Mention;

  factory Mention.fromJson(Map<String, Object?> json) =>
      _$MentionFromJson(json);
}
