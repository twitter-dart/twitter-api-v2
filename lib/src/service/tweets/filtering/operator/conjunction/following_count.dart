// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../../common/range.dart';
import '../validation_result.dart';
import 'conjunction_required_operator.dart';

class FollowingCount extends ConjunctionRequiredOperator {
  /// Returns the new instance of [FollowingCount].
  const FollowingCount(
    this.range, {
    bool negated = false,
  }) : super(negated);

  factory FollowingCount.negated(final Range range) =>
      FollowingCount(range, negated: true);

  /// The range
  final Range range;

  @override
  ValidationResult validate() {
    if (range.from.isNegative || range.to.isNegative) {
      return ValidationResult.failed(
        'The range must not be negative.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'following_count:${toRangeString(range)}';
}
