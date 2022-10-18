// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../validation_result.dart';
import 'standalone_operator.dart';

class UserBio extends StandaloneOperator {
  /// Returns the new instance of [UserBio].
  const UserBio(
    this.value, {
    bool negated = false,
  }) : super(negated);

  factory UserBio.negated(final String value) => UserBio(value, negated: true);

  /// The bio
  final String value;

  @override
  ValidationResult validate() {
    if (value.isEmpty) {
      return ValidationResult.failed(
        'The bio must not be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'user_bio:${toExactPhraseIfNecessary(value)}';
}
