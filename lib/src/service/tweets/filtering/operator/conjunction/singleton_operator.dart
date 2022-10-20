// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'conjunction_required_operator.dart';

abstract class SingletonOperator extends ConjunctionRequiredOperator {
  /// Returns the new instance of [SingletonOperator].
  const SingletonOperator(super.negated);
}
