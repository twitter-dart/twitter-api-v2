// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_data.freezed.dart';
part 'media_data.g.dart';

@freezed
class MediaData with _$MediaData {
  const factory MediaData({
    required String type,
    @JsonKey(name: 'media_keys') List<String>? mediaKeys,
  }) = _MediaData;

  factory MediaData.fromJson(Map<String, Object?> json) =>
      _$MediaDataFromJson(json);
}
