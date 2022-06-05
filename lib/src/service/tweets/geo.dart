// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';


// Project imports:
import 'geo_coordinates.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
class Geo with _$Geo {
  const factory Geo({
    String? placeId,
    GeoCoordinates? coordinates,
  }) = _Geo;

  factory Geo.fromJson(Map<String, Object?> json) =>
      _$GeoFromJson(json);
}
