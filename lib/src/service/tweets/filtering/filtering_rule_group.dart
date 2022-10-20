// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'channel/entry_channel.dart';
import 'channel/logical_channel.dart';
import 'channel/post_logical_channel.dart';
import 'operator/conjunction/conjunction_required_operator.dart';
import 'operator/conjunction/has_operator.dart';
import 'operator/conjunction/is_operator.dart';
import 'operator/conjunction/singleton_operator.dart';
import 'operator/filtering_rule_operator.dart';
import 'operator/logical/group.dart';
import 'operator/logical/logical_operator.dart';
import 'operator/standalone/standalone_operator.dart';

class FilteringRuleGroup {
  /// Returns the new instance of [FilteringRuleGroup].
  FilteringRuleGroup() {
    _entryChannel = EntryChannel(this);
    _logicalChannel = LogicalChannel(this);
    _postLogicalChannel = PostLogicalChannel(this);
  }

  /// The operators
  final _operators = <FilteringRuleOperator>[];

  late EntryChannel _entryChannel;
  late LogicalChannel _logicalChannel;
  late PostLogicalChannel _postLogicalChannel;

  EntryChannel get entryChannel => _entryChannel;

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

  LogicalChannel appendSingletonOperator(
    final SingletonOperator operator,
  ) {
    for (final $operator in _operators) {
      if ($operator is IsOperator || $operator is HasOperator) {
        if (($operator as dynamic).type == (operator as dynamic).type) {
          throw UnsupportedError('''
The same singleton operators cannot be used within a single group.

If you want to use multiple combinations of the same singleton operator,
use in nested groups or outside of groups.

❌ You Should Not
test has:retweet OR rule -has:retweet

✅ Instead, You Should
(test has:retweet) OR (rule -has:retweet)
            ''');
        }
      } else {
        if ($operator.runtimeType == operator.runtimeType) {
          throw UnsupportedError('''
The same singleton operators cannot be used within a single group.

If you want to use multiple combinations of the same singleton operator,
use in nested groups or outside of groups.

❌ You Should Not
test has:retweet OR rule -has:retweet

✅ Instead, You Should
(test has:retweet) OR (rule -has:retweet)
            ''');
        }
      }
    }

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
