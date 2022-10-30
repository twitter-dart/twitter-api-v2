// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/filtering/operator/standalone/country.dart';

void main() {
  group('.toString', () {
    test('normal case', () {
      final actual = Country(core.Country.japan);

      expect(actual.toString(), 'place_country:JP');
    });

    test('when negated', () {
      final actual = Country.negated(core.Country.japan);

      expect(actual.toString(), '-place_country:JP');
    });
  });
}
