// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../filtering_rule_operator.dart';

abstract class ConjunctionRequiredOperator extends FilteringRuleOperator {
  /// Returns the new instance of [ConjunctionRequiredOperator].
  const ConjunctionRequiredOperator(super.negated);
}
