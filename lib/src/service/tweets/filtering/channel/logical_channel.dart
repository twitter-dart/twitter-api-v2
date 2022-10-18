// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../filtering_rule_buffer.dart';
import '../operation/logical_operation.dart';
import '../syntax/conclusion.dart';
import 'post_logical_channel.dart';

class LogicalChannel implements Conclusion {
  /// Returns the new instance of [LogicalChannel].
  const LogicalChannel(this._buffer);

  static const _logicalOperation = LogicalOperation();

  /// The tray for filtering operators
  final FilteringRuleBuffer _buffer;

  /// Append "And" rule.
  PostLogicalChannel and() => _buffer.appendLogicalOperator(
        _logicalOperation.createAnd(),
      );

  /// Append "Or" rule.
  PostLogicalChannel or() => _buffer.appendLogicalOperator(
        _logicalOperation.createOr(),
      );

  @override
  String build() => _buffer.build();
}
