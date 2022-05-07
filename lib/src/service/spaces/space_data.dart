// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

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
    SpaceState? state,
  }) = _SpaceData;

  factory SpaceData.fromJson(Map<String, Object?> json) =>
      _$SpaceDataFromJson(json);
}
