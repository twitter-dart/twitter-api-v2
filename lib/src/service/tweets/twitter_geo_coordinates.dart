// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_geo_coordinates.freezed.dart';
part 'twitter_geo_coordinates.g.dart';

@freezed
class TwitterGeoCoordinates with _$TwitterGeoCoordinates {
  const factory TwitterGeoCoordinates({
    required String type,
    required List<double> coordinates,
  }) = _TwitterGeoCoordinates;

  factory TwitterGeoCoordinates.fromJson(Map<String, Object?> json) =>
      _$TwitterGeoCoordinatesFromJson(json);
}
