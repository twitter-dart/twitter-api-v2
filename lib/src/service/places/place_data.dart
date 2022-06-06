// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'place_geo.dart';

part 'place_data.freezed.dart';
part 'place_data.g.dart';

@freezed
class PlaceData with _$PlaceData {
  const factory PlaceData({
    required String id,
    required String fullName,
    String? name,
    String? placeType,
    String? country,
    String? countryCode,
    PlaceGeo? geo,
    List<String>? containedWithin,
  }) = _PlaceData;

  factory PlaceData.fromJson(Map<String, Object?> json) =>
      _$PlaceDataFromJson(json);
}
