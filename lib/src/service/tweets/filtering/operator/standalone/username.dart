// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../validation_result.dart';
import 'standalone_operator.dart';

class Username extends StandaloneOperator {
  /// Returns the new instance of [Username].
  const Username(
    this.username, {
    bool negated = false,
  }) : super(negated);

  factory Username.not(final String value) => Username(value, negated: true);

  /// The username
  final String username;

  @override
  ValidationResult validate() {
    if (username.startsWith('@') && username.length == 1) {
      return ValidationResult.failed(
        'The symbol "@" was specified but the username value does not exist.',
      );
    }

    if (username.isEmpty) {
      return ValidationResult.failed(
        'The username must not be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() {
    if (username.startsWith('@')) {
      return username;
    }

    return '@$username';
  }
}
