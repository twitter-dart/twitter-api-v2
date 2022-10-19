// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'conjunction_required_operator.dart';
import 'has_operator_type.dart';

class HasOperator extends ConjunctionRequiredOperator {
  /// Returns the new instance of [HasOperator].
  const HasOperator(
    this.type, {
    bool negated = false,
  }) : super(negated);

  factory HasOperator.negated(final HasOperatorType type) =>
      HasOperator(type, negated: true);

  /// The operator type
  final HasOperatorType type;

  @override
  String format() => 'has:${type.name}';
}
