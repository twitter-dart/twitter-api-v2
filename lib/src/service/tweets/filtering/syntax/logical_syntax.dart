// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../channel/post_logical_channel.dart';
import '../filtering_rule_buffer.dart';
import '../operation/logical_operation.dart';
import 'conclusion.dart';

abstract class LogicalSyntax implements Conclusion {
  const LogicalSyntax(this._buffer);

  /// The logical syntax
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
