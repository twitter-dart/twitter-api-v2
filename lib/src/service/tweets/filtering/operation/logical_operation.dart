// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../operator/logical/and.dart';
import '../operator/logical/group.dart';
import '../operator/logical/or.dart';
import '../syntax/conclusion.dart';

class LogicalOperation {
  /// Returns the new instance of [LogicalOperation].
  const LogicalOperation();

  /// Returns the new instance of [And].
  And createAnd() => And();

  /// Returns the new instance of [Or].
  Or createOr() => Or();

  /// Returns the new instance of [Group].
  Group createGroup(final Conclusion conclusion) => Group(conclusion);

  /// Returns the new instance of negated [Group].
  Group createNegatedGroup(final Conclusion conclusion) =>
      Group.negated(conclusion);
}
