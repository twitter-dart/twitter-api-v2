// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../validation_result.dart';
import 'conjunction_required_operator.dart';

class Sample extends ConjunctionRequiredOperator {
  /// Returns the new instance of [Sample].
  const Sample(
    this.value, {
    bool negated = false,
  }) : super(negated);

  factory Sample.negated(final int value) => Sample(value, negated: true);

  /// The value
  final int value;

  @override
  ValidationResult validate() {
    if (!(1 <= value || value <= 100)) {
      return ValidationResult.failed(
        'The sample must be from 1 to 100.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'sample:$value';
}
