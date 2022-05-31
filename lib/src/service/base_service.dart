// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import '../client/client_context.dart';
import '../client/user_context.dart';
import '../twitter_exception.dart';
import 'expansion.dart';
import 'field.dart';
import 'includes.dart';
import 'twitter_response.dart';

abstract class Service {
  Future<http.Response> get(UserContext userContext, String unencodedPath);

  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<http.Response> post(
    UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<http.Response> delete(UserContext userContext, String unencodedPath);

  Future<http.Response> put(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  Future<TwitterResponse<D, M>> buildResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  Future<TwitterResponse<List<D>, M>> buildMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  String? serialize(List<String>? strings);

  String? serializeExpansions(List<Expansion>? expansions);

  String? serializeFields(List<Field>? fields);
}

abstract class BaseService implements Service {
  /// Returns the new instance of [BaseService].
  BaseService({required ClientContext context}) : _context = context;

  /// The base url
  static const _authority = 'api.twitter.com';

  /// The field name of data
  static const _dataFieldName = 'data';

  /// The field name of includes
  static const _includesFieldName = 'includes';

  /// The field name of meta
  static const _metaFieldName = 'meta';

  /// The twitter client
  final ClientContext _context;

  @override
  Future<http.Response> get(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final response = await _context.get(
      userContext,
      Uri.https(
        _authority,
        unencodedPath,
        _convertQueryParameters(queryParameters),
      ),
    );

    print(response.body);

    return response;
  }

  @override
  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final streamedResponse = await _context.getStream(
      userContext,
      http.Request(
        'GET',
        Uri.https(
          _authority,
          unencodedPath,
          _convertQueryParameters(queryParameters),
        ),
      ),
    );

    return streamedResponse.stream
        .transform(utf8.decoder)
        .map((event) => _checkStreamedResponse(streamedResponse, event));
  }

  @override
  Future<http.Response> post(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
  }) async {
    final response = await _context.post(
      userContext,
      Uri.https(
        _authority,
        unencodedPath,
        _convertQueryParameters(queryParameters),
      ),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(_removeNullParameters(body)),
    );

    return response;
  }

  @override
  Future<http.Response> delete(
    final UserContext userContext,
    final String unencodedPath,
  ) async {
    final response = await _context.delete(
      userContext,
      Uri.https(_authority, unencodedPath),
    );

    return response;
  }

  @override
  Future<http.Response> put(
    final UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async {
    final response = await _context.put(
      userContext,
      Uri.https(_authority, unencodedPath),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(_removeNullParameters(body)),
    );

    return response;
  }

  dynamic _removeNullParameters(final dynamic object) {
    if (object is! Map) {
      return object;
    }

    final parameters = <String, dynamic>{};
    object.forEach((key, value) {
      final newObject = _removeNullParameters(value);
      if (newObject != null) {
        parameters[key] = newObject;
      }
    });

    return parameters.isNotEmpty ? parameters : null;
  }

  @override
  Future<TwitterResponse<D, M>> buildResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) async {
    final jsonBody = _checkResponseBody(response);
    return TwitterResponse(
      data: dataBuilder(jsonBody[_dataFieldName]),
      includes: jsonBody.containsKey(_includesFieldName)
          ? Includes.fromJson(jsonBody[_includesFieldName])
          : null,
      meta: jsonBody.containsKey(_metaFieldName) && metaBuilder != null
          ? metaBuilder(jsonBody[_metaFieldName])
          : null,
    );
  }

  @override
  Future<TwitterResponse<List<D>, M>> buildMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) async {
    final jsonBody = _checkResponseBody(response);
    return TwitterResponse(
      data: jsonBody[_dataFieldName]
          .map<D>((tweet) => dataBuilder(tweet))
          .toList(),
      includes: jsonBody.containsKey(_includesFieldName)
          ? Includes.fromJson(jsonBody[_includesFieldName])
          : null,
      meta: jsonBody.containsKey(_metaFieldName) && metaBuilder != null
          ? metaBuilder(jsonBody[_metaFieldName])
          : null,
    );
  }

  @override
  String? serialize(List<String>? strings) => strings?.toSet().join(',');

  @override
  String? serializeExpansions(List<Expansion>? expansions) =>
      expansions?.toSet().map((e) => e.value).toList().join(',');

  @override
  String? serializeFields(List<Field>? fields) =>
      fields?.toSet().map((e) => e.value).toList().join(',');

  Map<String, dynamic> _checkResponseBody(final http.Response response) {
    final jsonBody = jsonDecode(response.body);
    if (!jsonBody.containsKey('data')) {
      //! This occurs when the tweet to be processed has been deleted or
      //! when the target data does not exist at the time of search.
      throw TwitterException(
        'No response data exists for the request.',
        response,
      );
    }

    return jsonBody;
  }

  Map<String, dynamic> _checkStreamedResponse(
    final http.StreamedResponse response,
    final String event,
  ) {
    final body = jsonDecode(event);

    if (!body.containsKey('data')) {
      throw TwitterException(
        'No response data exists for the request.',
        response,
        event,
      );
    }

    return body;
  }

  Map<String, String> _convertQueryParameters(
    final Map<String, dynamic> queryParameters,
  ) =>
      Map.from(_removeNullParameters(queryParameters) ?? {}).map(
        //! Uri.https(...) needs iterable in the value for query params by
        //! which it means a String in the value of the Map too. So you need
        //! to convert it from Map<String, dynamic> to Map<String, String>
        (key, value) => MapEntry(key, value.toString()),
      );
}
