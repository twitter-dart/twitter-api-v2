// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_coordinates.freezed.dart';
part 'place_coordinates.g.dart';

@freezed
class PlaceCoordinates with _$PlaceCoordinates {
  const factory PlaceCoordinates({
    required String type,
    required List<double> coordinates,
  }) = _PlaceCoordinates;

  factory PlaceCoordinates.fromJson(Map<String, Object?> json) =>
      _$PlaceCoordinatesFromJson(json);
}
