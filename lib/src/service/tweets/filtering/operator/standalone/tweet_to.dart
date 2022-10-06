// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../validation_result.dart';
import 'standalone_operator.dart';

class TweetTo extends StandaloneOperator {
  /// Returns the new instance of [TweetTo].
  const TweetTo(
    this.username, {
    bool negated = false,
  }) : super(negated);

  factory TweetTo.not(final String value) => TweetTo(value, negated: true);

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
  String format() => 'to:$username';
}
