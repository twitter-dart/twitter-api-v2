// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../filtering_rule_param.dart';
import 'after_logical_operation.dart';
import 'filtering_rule_buffer.dart';

class LogicalOperation {
  /// Returns the new instance of [LogicalOperation].
  const LogicalOperation(this._buffer);

  /// The tray for filtering operators.
  final FilteringRuleBuffer _buffer;

  /// Append "And" rule.
  AfterLogicalOperation and() => _buffer.appendAndOperator();

  /// Append "Or" rule.
  AfterLogicalOperation or() => _buffer.appendOrOperator();

  LogicalOperation group(final LogicalOperation logicalRoute) =>
      _buffer.appendGroup(logicalRoute);

  /// Returns the built filtering rule.
  FilteringRuleParam build() => _buffer.build();
}
