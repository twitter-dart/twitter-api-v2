// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'conjunction_required_operator.dart';
import 'is_operator_type.dart';

class IsOperator extends ConjunctionRequiredOperator {
  /// Returns the new instance of [IsOperator].
  const IsOperator(
    this.type, {
    bool negated = false,
  }) : super(negated);

  factory IsOperator.negated(final IsOperatorType type) =>
      IsOperator(type, negated: true);

  /// The operator type
  final IsOperatorType type;

  @override
  String format() => 'is:${type.name}';
}
