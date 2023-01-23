// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum DecahosePartition {
  section1(1),
  section2(2);

  /// The partition value.
  final int value;

  static DecahosePartition valueOf(final String value) {
    for (final element in values) {
      if (element.value.toString() == value) {
        return element;
      }
    }

    throw UnsupportedError('Unsupported value [$value].');
  }

  const DecahosePartition(this.value);
}
