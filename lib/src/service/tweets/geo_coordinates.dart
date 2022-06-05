// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_coordinates.freezed.dart';
part 'geo_coordinates.g.dart';

@freezed
class GeoCoordinates with _$GeoCoordinates {
  const factory GeoCoordinates({
    required String type,
    required List<double> coordinates,
  }) = _GeoCoordinates;

  factory GeoCoordinates.fromJson(Map<String, Object?> json) =>
      _$GeoCoordinatesFromJson(json);
}
