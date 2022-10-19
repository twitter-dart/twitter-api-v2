// Project imports:
import '../channel/logical_channel.dart';
import '../filtering_rule_buffer.dart';
import '../operation/logical_operation.dart';
import 'conclusion.dart';
import 'filtering_rule_syntax.dart';

abstract class GroupSyntax implements FilteringRuleSyntax {
  const GroupSyntax(this._buffer);

  /// The logical operation
  static const _logicalOperation = LogicalOperation();

  /// The buffer
  final FilteringRuleBuffer _buffer;

  /// Add grouped rules.
  LogicalChannel group(final Conclusion conclusion) => _buffer.appendGroup(
        _logicalOperation.createGroup(conclusion),
      );

  /// Add negated grouped rules.
  LogicalChannel negatedGroup(final Conclusion conclusion) =>
      _buffer.appendGroup(
        _logicalOperation.createNegatedGroup(conclusion),
      );
}