// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This class represents an automatic retry configuration.
///
/// The simplest way to specify automatic retries is to specify a fixed number
/// of times at fixed intervals. For example, to automatically retry up to
/// 5 times at 2 seconds intervals when a timeout occurs in the communication
/// process with the API, define the following.
///
/// ```dart
/// import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;
///
/// void main() async {
///   final twitter = v2.TwitterApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: v2.RetryConfig(
///       maxAttempts: 5,
///       intervalInSeconds: 2,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// ```
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
/// performed. This retry method is disabled by default, but can be enabled
/// with the [useExponentialBackOff] flag as follows:
///
/// ```dart
/// import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;
///
/// void main() async {
///   final twitter = v2.TwitterApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: v2.RetryConfig(
///       maxAttempts: 5,
///       intervalInSeconds: 2,
///       // Enable the Exponential BackOff algorithm.
///       useExponentialBackOff: true,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// ```
///
/// The Exponential BackOff algorithm can be enabled by setting the
/// [useExponentialBackOff] flag to true, as in the example above. And the
/// interval, which increases with the number of retries, is then calculated
/// as follows.
///
/// - **intervalInSeconds + retryCount ^ 2**
///
/// Also, please note that [ArgumentError] is always raised if a negative number
/// is passed to the [maxAttempts] field of [RetryConfig].
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
