// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../validation_result.dart';
import 'standalone_operator.dart';

class RetweetsOf extends StandaloneOperator {
  /// Returns the new instance of [RetweetsOf].
  const RetweetsOf(
    this.username, {
    bool negated = false,
  }) : super(negated);

  factory RetweetsOf.negated(final String username) =>
      RetweetsOf(username, negated: true);

  /// The username
  final String username;

  @override
  ValidationResult validate() {
    if (username.isEmpty) {
      return ValidationResult.failed(
        'The username must not be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'retweets_of:$username';
}
