// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class RetryConfig {
  /// Returns the new instance of [RetryConfig].
  RetryConfig({
    required this.maxAttempt,
    this.interval = const Duration(seconds: 10),
    this.backOff,
    this.onRetry,
  });

  /// Maximum number of retry attempts.
  final int maxAttempt;

  /// Interval between retry attempts.
  final Duration interval;

  /// Back off strategy.
  final Duration? backOff;

  /// Callback when retry is performed.
  final Function? onRetry;
}
