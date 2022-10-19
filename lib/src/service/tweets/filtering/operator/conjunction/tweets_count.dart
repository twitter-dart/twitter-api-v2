// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../../common/range.dart';
import '../validation_result.dart';
import 'conjunction_required_operator.dart';

class TweetsCount extends ConjunctionRequiredOperator {
  /// Returns the new instance of [TweetsCount].
  const TweetsCount(
    this.range, {
    bool negated = false,
  }) : super(negated);

  factory TweetsCount.negated(final Range range) =>
      TweetsCount(range, negated: true);

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
  String format() => 'tweets_count:${toRangeString(range)}';
}
