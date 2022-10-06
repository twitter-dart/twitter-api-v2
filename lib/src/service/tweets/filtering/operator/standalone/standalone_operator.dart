// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../filtering_rule_operator.dart';

abstract class StandaloneOperator extends FilteringRuleOperator {
  /// Returns the new instance of [StandaloneOperator].
  const StandaloneOperator(super.negated);
}
