// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../filtering_rule_buffer.dart';
import '../operation/conjunction_required_operation.dart';
import 'standalone_syntax.dart';

abstract class ConjunctionRequiredSyntax extends StandaloneSyntax {
  /// Returns the new instance of [ConjunctionRequiredSyntax].
  const ConjunctionRequiredSyntax(super.buffer) : _buffer = buffer;

  /// The conjunction required operation
  static const _conjunctionRequiredOperation = ConjunctionRequiredOperation();

  /// The buffer
  final FilteringRuleBuffer _buffer;
}
