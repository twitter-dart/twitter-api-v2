// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
// Project imports:
import 'package:twitter_api_v2/src/client/user_context.dart';

import 'mock.mocks.dart';

MockClientContext buildGetStub(
  final UserContext userContext,
  final String unencodedPath,
  final String resourcePath,
  final Map<String, String> queryParameters,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.get(
    userContext,
    Uri.https('api.twitter.com', unencodedPath, queryParameters),
    timeout: anyNamed('timeout'),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  //! Override if you want to test with OAuth 1.0a.
  when(mockClientContext.hasOAuth1Client).thenReturn(false);

  return mockClientContext;
}

MockClientContext buildPostStub(
  final UserContext userContext,
  final String unencodedPath,
  final String resourcePath,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.post(
    userContext,
    Uri.https('api.twitter.com', unencodedPath),
    headers: anyNamed('headers'),
    body: anyNamed('body'),
    timeout: anyNamed('timeout'),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  //! Override if you want to test with OAuth 1.0a.
  when(mockClientContext.hasOAuth1Client).thenReturn(false);

  return mockClientContext;
}

MockClientContext buildDeleteStub(
  final String unencodedPath,
  final String resourcePath,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.delete(
    UserContext.oauth2OrOAuth1,
    Uri.https('api.twitter.com', unencodedPath),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  //! Override if you want to test with OAuth 1.0a.
  when(mockClientContext.hasOAuth1Client).thenReturn(false);

  return mockClientContext;
}

MockClientContext buildPutStub(
  final String unencodedPath,
  final String resourcePath,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.put(
    UserContext.oauth2OrOAuth1,
    Uri.https('api.twitter.com', unencodedPath),
    headers: anyNamed('headers'),
    body: anyNamed('body'),
    timeout: anyNamed('timeout'),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  //! Override if you want to test with OAuth 1.0a.
  when(mockClientContext.hasOAuth1Client).thenReturn(false);

  return mockClientContext;
}

MockClientContext buildSendStub(
  final UserContext userContext,
  final String resourcePath, [
  final Map<String, String>? queryParameters,
]) {
  final mockClientContext = MockClientContext();

  Stream<List<int>> responseStream() async* {
    final converter = JsonUtf8Encoder();
    final responsesString = await File(resourcePath).readAsString();
    final responses = jsonDecode(responsesString) as List<dynamic>;

    for (final response in responses) {
      yield converter.convert(response);
    }
  }

  when(mockClientContext.send(
    userContext,
    any,
    timeout: anyNamed('timeout'),
  )).thenAnswer(
    (_) async {
      return http.StreamedResponse(
        responseStream(),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    },
  );

  //! Override if you want to test with OAuth 1.0a.
  when(mockClientContext.hasOAuth1Client).thenReturn(false);

  return mockClientContext;
}
