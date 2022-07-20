// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../client/retry_context.dart';

/// This class represents an automatic retry configuration.
///
/// ## Retry at Regular Intervals
///
/// The simplest way to specify automatic retries is to specify a fixed number
/// of times at fixed intervals. For example, to automatically retry up to
/// 5 times at 3 seconds intervals when a timeout occurs in the communication
/// process with the API, use [RetryConfig.interval] like following.
///
/// ```dart
/// import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;
///
/// void main() async {
///   final twitter = v2.TwitterApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: v2.RetryConfig.interval(
///       maxAttempts: 5,
///       intervalInSeconds: 3,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// ## Exponential Backoff Algorithm
///
/// But sometimes this retry method is too simplistic: if a timeout occurs when
/// communicating with the API, it is certainly useful to retry multiple times
/// at regular intervals, as in the previous example. However, it is undesirable
/// to have multiple clients sending large numbers of requests to the server at
/// short intervals simultaneously when the server is experiencing a failure.
///
/// To solve this problem somewhat, the library supports automatic retries with
/// the **Exponential BackOff algorithm**. This is an algorithm that
/// exponentially increases the retry interval based on the number of retries
/// performed. It can be enabled with the [RetryConfig.exponentialBackOff]
/// constructor as follows.
///
/// ```dart
/// import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;
///
/// void main() async {
///   final twitter = v2.TwitterApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: v2.RetryConfig.exponentialBackOff(
///       maxAttempts: 5,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// The **Exponential BackOff Algorithm** can be enabled by using the
/// [RetryConfig.exponentialBackOff] constructor, as in the example above.
/// And the interval, which increases with the number of retries, is then
/// calculated as follows.
///
/// > **2 ^ retryCount**
///
/// ## Exponential Backoff Algorithm and Jitter
///
/// However, sometimes simply increasing the wait time exponentially is still
/// not sufficient to distribute retry timing. In addition to simply increasing
/// the interval exponentially, adding a random number called **Jitter** is
/// effective. This method allows for even greater flexibility in distributing
/// the timing of retries.
///
/// [RetryConfig.exponentialBackOff] constructor, as in the example above.
/// As always, you can use this algorithm by using
/// [RetryConfig.exponentialBackOffAndJitter] constructor as follows.
///
/// ```dart
/// import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;
///
/// void main() async {
///   final twitter = v2.TwitterApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: v2.RetryConfig.exponentialBackOffAndJitter(
///       maxAttempts: 5,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// The **Exponential BackOff and Jitter Algorithm** can be enabled by using the
/// [RetryConfig.exponentialBackOffAndJitter] constructor, as in the example
/// above. And the interval, which increases with the number of retries, is then
/// calculated as follows.
///
/// > **(2 ^ retryCount) + jitter(Random Number between 0 ~ 3)**
///
/// ## Remarks
///
/// Please note that [ArgumentError] is always raised if a negative number
/// is passed to the [maxAttempts] field of [RetryConfig].
class RetryConfig {
  /// Returns the new instance of [RetryConfig] of interval.
  factory RetryConfig.interval({
    required int maxAttempts,
    int intervalInSeconds = 2,
    Function(RetryContext context)? onExecute,
  }) =>
      RetryConfig._(
        maxAttempts: maxAttempts,
        intervalInSeconds: intervalInSeconds,
        useExponentialBackOff: false,
        useExponentialBackOffAndJitter: false,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off.
  factory RetryConfig.exponentialBackOff({
    required int maxAttempts,
    Function(RetryContext context)? onExecute,
  }) =>
      RetryConfig._(
        maxAttempts: maxAttempts,
        intervalInSeconds: 0,
        useExponentialBackOff: true,
        useExponentialBackOffAndJitter: false,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off
  /// and Jitter.
  factory RetryConfig.exponentialBackOffAndJitter({
    required int maxAttempts,
    Function(RetryContext context)? onExecute,
  }) =>
      RetryConfig._(
        maxAttempts: maxAttempts,
        intervalInSeconds: 0,
        useExponentialBackOff: false,
        useExponentialBackOffAndJitter: true,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig].
  RetryConfig._({
    required this.maxAttempts,
    required this.intervalInSeconds,
    required this.useExponentialBackOff,
    required this.useExponentialBackOffAndJitter,
    required this.onExecute,
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

  /// A flag indicating whether to use an exponential back off and jitter
  /// algorithm.
  ///
  /// The default is false.
  final bool useExponentialBackOffAndJitter;

  /// A callback function to be called when the retry is executed.
  final Function(RetryContext context)? onExecute;
}
