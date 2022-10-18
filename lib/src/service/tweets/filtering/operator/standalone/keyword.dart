// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../validation_result.dart';
import 'standalone_operator.dart';

class Keyword extends StandaloneOperator {
  /// Returns the new instance of [Keyword].
  const Keyword(
    this.value, {
    bool negated = false,
  }) : super(negated);

  factory Keyword.negated(final String value) => Keyword(value, negated: true);

  /// The value
  final String value;

  @override
  ValidationResult validate() {
    if (value.isEmpty) {
      return ValidationResult.failed(
        'The keyword must not be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => toExactPhraseIfNecessary(value);
}
