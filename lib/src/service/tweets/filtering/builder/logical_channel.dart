// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'after_logical_channel.dart';
import 'conclusion.dart';
import 'filtering_rule_buffer.dart';

class LogicalChannel implements Conclusion {
  /// Returns the new instance of [LogicalChannel].
  const LogicalChannel(this._buffer);

  /// The tray for filtering operators
  final FilteringRuleBuffer _buffer;

  /// Append "And" rule.
  AfterLogicalChannel and() => _buffer.appendAndOperator();

  /// Append "Or" rule.
  AfterLogicalChannel or() => _buffer.appendOrOperator();

  /// Returns the built filtering rule.
  @override
  String build() => _buffer.build();
}
