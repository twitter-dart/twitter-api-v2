// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../builder/conclusion.dart';
import 'logical_operator.dart';

class Group extends LogicalOperator {
  /// Returns the new instance of [Group].
  const Group(
    this.conclusion, {
    bool negated = false,
  }) : super(negated);

  /// Returns the new instance of negated [Group] object.
  factory Group.negated(final Conclusion conclusion) => Group(
        conclusion,
        negated: true,
      );

  /// The conclusion of rule
  final Conclusion conclusion;

  @override
  String format() => '(${conclusion.build()})';
}
