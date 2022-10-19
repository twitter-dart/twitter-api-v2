// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../validation_result.dart';
import 'conjunction_required_operator.dart';

class Source extends ConjunctionRequiredOperator {
  /// Returns the new instance of [Source].
  const Source(
    this.value, {
    bool negated = false,
  }) : super(negated);

  factory Source.negated(final String value) => Source(value, negated: true);

  /// The value
  final String value;

  @override
  ValidationResult validate() {
    if (value.isEmpty) {
      return ValidationResult.failed(
        'The value must be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'source:$value';
}