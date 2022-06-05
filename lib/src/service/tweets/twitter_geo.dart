// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';


// Project imports:
import 'twitter_geo_coordinates.dart';

part 'twitter_geo.freezed.dart';
part 'twitter_geo.g.dart';

@freezed
class TwitterGeo with _$TwitterGeo {
  const factory TwitterGeo({
    String? placeId,
    TwitterGeoCoordinates? coordinates,
  }) = _TwitterGeo;

  factory TwitterGeo.fromJson(Map<String, Object?> json) =>
      _$TwitterGeoFromJson(json);
}
