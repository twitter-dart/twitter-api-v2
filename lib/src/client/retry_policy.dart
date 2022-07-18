// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:math' as math;

// Project imports:
import '../config/retry_config.dart';

abstract class RetryPolicy {
  /// Returns the new instance of [RetryPolicy].
  factory RetryPolicy(
    final RetryConfig? retryConfig,
  ) =>
      _RetryPolicy(retryConfig);

  /// Returns true if the retry should be performed, otherwise false.
  bool shouldRetry(final int retryCount);

  Future waitWithExponentialBackOff(final int retryCount);
}

class _RetryPolicy implements RetryPolicy {
  /// Returns the new instance of [_RetryPolicy].
  _RetryPolicy(RetryConfig? retryConfig) : _retryConfig = retryConfig;

  /// The configuration of retry.
  final RetryConfig? _retryConfig;

  @override
  bool shouldRetry(final int retryCount) {
    _checkRetryCount(retryCount);

    if (_retryConfig == null) {
      return false;
    }

    return _retryConfig!.maxAttempts > retryCount;
  }

  @override
  Future waitWithExponentialBackOff(final int retryCount) async {
    _checkRetryCount(retryCount);

    if (_retryConfig == null) {
      return;
    }

    await Future.delayed(
      Duration(
        seconds: _retryConfig!.intervalInSeconds + _computeBackOff(retryCount),
      ),
    );
  }

  void _checkRetryCount(final int retryCount) {
    if (retryCount < 0) {
      //! There is no use case where the number of retries is negative.
      throw ArgumentError.value(
        retryCount,
        'retryCount',
        'must be greater than or equal to 0',
      );
    }
  }

  int _computeBackOff(final int retryCount) {
    if (!_retryConfig!.useExponentialBackOff) {
      return 0;
    }

    return math.pow(retryCount, 2).toInt();
  }
}
