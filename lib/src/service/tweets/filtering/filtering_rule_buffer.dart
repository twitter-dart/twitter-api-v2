// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'channel/entry_channel.dart';
import 'channel/logical_channel.dart';
import 'channel/post_logical_channel.dart';
import 'operator/conjunction/conjunction_required_operator.dart';
import 'operator/filtering_rule_operator.dart';
import 'operator/logical/group.dart';
import 'operator/logical/logical_operator.dart';
import 'operator/standalone/standalone_operator.dart';

EntryChannel get newFilteringRule => FilteringRuleBuffer().entry;

class FilteringRuleBuffer {
  /// Returns the new instance of [FilteringRuleBuffer].
  FilteringRuleBuffer() {
    _entryChannel = EntryChannel(this);
    _logicalChannel = LogicalChannel(this);
    _postLogicalChannel = PostLogicalChannel(this);
  }

  /// The operators
  final _operators = <FilteringRuleOperator>[];

  late EntryChannel _entryChannel;
  late LogicalChannel _logicalChannel;
  late PostLogicalChannel _postLogicalChannel;

  EntryChannel get entry => _entryChannel;

  LogicalChannel appendStandaloneOperator(
    final StandaloneOperator operator,
  ) {
    _operators.add(operator);

    return _logicalChannel;
  }

  LogicalChannel appendConjunctionRequiredOperator(
    final ConjunctionRequiredOperator operator,
  ) {
    _operators.add(operator);

    return _logicalChannel;
  }

  PostLogicalChannel appendLogicalOperator(
    final LogicalOperator operator,
  ) {
    _operators.add(operator);

    return _postLogicalChannel;
  }

  LogicalChannel appendGroup(
    final Group group,
  ) {
    _operators.add(group);

    return _logicalChannel;
  }

  String build() {
    final buffer = StringBuffer();

    for (final operator in _operators) {
      buffer.write(operator.toString());
    }

    return buffer.toString();
  }
}
