// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class RetryConfig {
  /// Returns the new instance of [RetryConfig].
  RetryConfig({
    required this.maxAttempts,
    this.intervalInSeconds = 10,
    this.useExponentialBackOff = false,
  }) {
    if (maxAttempts < 0) {
      //! There is no use case where the number of retries is negative.
      throw ArgumentError.value(
        maxAttempts,
        'maxAttempts',
        'must be greater than or equal to 0',
      );
    }
  }

  /// Maximum number of retry attempts.
  final int maxAttempts;

  /// Interval time in seconds unit.
  final int intervalInSeconds;

  /// A flag indicating whether to use an exponential back off algorithm.
  /// The default is false.
  final bool useExponentialBackOff;
}
