// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This class represents the context during the retry process.
class RetryContext {
  /// Returns the new instance of [RetryContext].
  RetryContext({
    required this.retryCount,
    required this.intervalInSeconds,
  });

  /// The number of retry.
  final int retryCount;

  /// The interval in seconds unit.
  final int intervalInSeconds;
}
