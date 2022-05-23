// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'place_coordinates.dart';

part 'place_data.freezed.dart';
part 'place_data.g.dart';

@freezed
class PlaceData with _$PlaceData {
  const factory PlaceData({
    @JsonKey(name: 'place_id') required String placeId,
    required PlaceCoordinates? coordinates,
  }) = _PlaceData;

  factory PlaceData.fromJson(Map<String, Object?> json) =>
      _$PlaceDataFromJson(json);
}
