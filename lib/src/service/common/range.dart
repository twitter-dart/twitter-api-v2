// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class Range {
  /// Returns the new instance of [Range].
  const Range._(this.from, this.to);

  /// Obtains a range using the specified element as both
  /// the minimum and maximum in this range.
  factory Range.point(final int value) => Range._(value, value);

  /// Obtains a range with the specified minimum and maximum values.
  factory Range.between(final int from, final int to) {
    if (from > to) {
      throw ArgumentError('The "from" parameter must be less than "to".');
    }

    return Range._(from, to);
  }

  /// The "from" number
  final int from;

  /// The "to" number
  final int to;

  /// Returns true if this range is the point, otherwise false.
  bool get isPoint => from == to;
}
