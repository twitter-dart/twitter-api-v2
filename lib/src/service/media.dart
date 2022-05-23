// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    required String type,
    @JsonKey(name: 'media_keys') required List<String> mediaKeys,
  }) = _Media;

  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);
}
