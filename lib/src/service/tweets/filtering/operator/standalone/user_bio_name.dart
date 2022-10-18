// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../validation_result.dart';
import 'standalone_operator.dart';

class UserBioName extends StandaloneOperator {
  /// Returns the new instance of [UserBioName].
  const UserBioName(
    this.value, {
    bool negated = false,
  }) : super(negated);

  factory UserBioName.negated(final String value) =>
      UserBioName(value, negated: true);

  /// The bio name
  final String value;

  @override
  ValidationResult validate() {
    if (value.isEmpty) {
      return ValidationResult.failed(
        'The bio name must not be an empty string.',
      );
    }

    return ValidationResult.succeeded();
  }

  @override
  String format() => 'bio_name:$value';
}
