// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:http/http.dart';

/// This class indicates that an unexpected error occurred when communicating
/// with the Twitter API.
class TwitterException implements Exception {
  /// Returns the new instance of [TwitterException].
  TwitterException(this.response);

  /// The response from the Twitter API.
  final Response response;

  @override
  String toString() =>
      '''TwitterException: An exception occurred in communication with the Twitter API.

✅ Request:
   ${response.request}

✅ Headers:
   ${response.headers}

✅ Body:
   ${response.body}

Please create an Issue if you have a question or suggestion for this exception.
https://github.com/twitter-dart/twitter-api-v2/issues
''';
}
