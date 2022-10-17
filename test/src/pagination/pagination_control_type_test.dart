// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/pagination/pagination_control_type.dart';

void main() {
  test('.name', () {
    expect(PaginationControlType.forward.name, 'forward');
    expect(PaginationControlType.backward.name, 'backward');
    expect(PaginationControlType.stop.name, 'stop');
  });

  group('.isForward', () {
    test('when element is forward', () {
      expect(PaginationControlType.forward.isForward, isTrue);
    });

    test('when element is backward', () {
      expect(PaginationControlType.backward.isForward, isFalse);
    });

    test('when element is stop', () {
      expect(PaginationControlType.stop.isForward, isFalse);
    });
  });

  group('.isNotStop', () {
    test('when element is forward', () {
      expect(PaginationControlType.forward.isNotStop, isTrue);
    });

    test('when element is backward', () {
      expect(PaginationControlType.backward.isNotStop, isTrue);
    });

    test('when element is stop', () {
      expect(PaginationControlType.stop.isNotStop, isFalse);
    });
  });
}
