// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/geo/place_type.dart';

void main() {
  test('.name', () {
    expect(PlaceType.poi.name, 'poi');
    expect(PlaceType.neighborhood.name, 'neighborhood');
    expect(PlaceType.city.name, 'city');
    expect(PlaceType.admin.name, 'admin');
    expect(PlaceType.country.name, 'country');
    expect(PlaceType.unknown.name, 'unknown');
  });
}
