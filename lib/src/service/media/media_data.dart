// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'media_type.dart';

part 'media_data.freezed.dart';
part 'media_data.g.dart';

@freezed
class MediaData with _$MediaData {
  const factory MediaData({
    @JsonKey(name: 'media_key') required String key,
    required MediaType type,
  }) = _MediaData;

  factory MediaData.fromJson(Map<String, Object?> json) =>
      _$MediaDataFromJson(json);
}
