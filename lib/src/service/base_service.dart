// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'common/includes.dart';
import 'common/rate_limit.dart';
import 'response_field.dart';
import 'twitter_response.dart';

abstract class _Service {
  Future<http.Response> get(
    core.UserContext userContext,
    String unencodedPath,
  );

  Future<core.StreamResponse> getStream(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<http.Response> post(
    core.UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<http.Response> delete(
    core.UserContext userContext,
    String unencodedPath,
  );

  Future<http.Response> put(
    core.UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  TwitterResponse<D, M> transformSingleDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  TwitterResponse<List<D>, M> transformMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  TwitterResponse<bool, void> evaluateResponse(final http.Response response);
}

abstract class BaseService implements _Service {
  /// Returns the new instance of [BaseService].
  BaseService({required core.ClientContext context})
      : _helper = core.ServiceHelper(
          authority: 'api.twitter.com',
          context: context,
        );

  final core.ServiceHelper _helper;

  @protected
  final ResponseHeaderConverter headerConverter =
      const ResponseHeaderConverter();

  @override
  Future<http.Response> get(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.get(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        validate: checkResponse,
      );

  @override
  Future<core.StreamResponse> getStream(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> Function(
            StreamedResponse streamedResponse, String event)?
        validate,
  }) async =>
      await _helper.getStream(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        validate: _checkStreamedResponse,
      );

  @override
  Future<http.Response> post(
    final core.UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async =>
      await _helper.post(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<http.Response> delete(
    final core.UserContext userContext,
    final String unencodedPath, {
    Response Function(Response response)? validate,
  }) async =>
      await _helper.delete(
        userContext,
        unencodedPath,
        validate: checkResponse,
      );

  @override
  Future<http.Response> put(
    final core.UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async =>
      await _helper.put(
        userContext,
        unencodedPath,
        body: body,
        validate: checkResponse,
      );

  @override
  TwitterResponse<D, M> transformSingleDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) {
    final jsonBody = _checkResponseBody(response);

    return TwitterResponse(
      rateLimit: RateLimit.fromJson(
        headerConverter.convert(response.headers),
      ),
      data: dataBuilder(
        jsonBody[ResponseField.data.value],
      ),
      includes: jsonBody.containsKey(ResponseField.includes.value)
          ? Includes.fromJson(jsonBody[ResponseField.includes.value])
          : null,
      meta:
          jsonBody.containsKey(ResponseField.meta.value) && metaBuilder != null
              ? metaBuilder(jsonBody[ResponseField.meta.value])
              : null,
    );
  }

  @override
  TwitterResponse<List<D>, M> transformMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) {
    final jsonBody = _checkResponseBody(response);

    return TwitterResponse(
      rateLimit: RateLimit.fromJson(
        headerConverter.convert(response.headers),
      ),
      data: jsonBody[ResponseField.data.value]
          .map<D>((tweet) => dataBuilder(tweet))
          .toList(),
      includes: jsonBody.containsKey(ResponseField.includes.value)
          ? Includes.fromJson(jsonBody[ResponseField.includes.value])
          : null,
      meta:
          jsonBody.containsKey(ResponseField.meta.value) && metaBuilder != null
              ? metaBuilder(jsonBody[ResponseField.meta.value])
              : null,
    );
  }

  @override
  TwitterResponse<bool, void> evaluateResponse(final http.Response response) =>
      TwitterResponse(
        rateLimit: RateLimit.fromJson(
          headerConverter.convert(response.headers),
        ),
        data: !core
            .tryJsonDecode(response, response.body)
            .containsKey(ResponseField.errors.value),
      );

  Map<String, dynamic> _checkResponseBody(final http.Response response) {
    final jsonBody = core.tryJsonDecode(response, response.body);

    if (!jsonBody.containsKey(ResponseField.data.value)) {
      //! This occurs when the tweet to be processed has been deleted or
      //! when the target data does not exist at the time of search.
      throw core.TwitterException(
        'No response data exists for the request.',
        response,
      );
    }

    return jsonBody;
  }

  http.Response checkResponse(
    final http.Response response,
  ) {
    if (response.statusCode == 401) {
      throw core.UnauthorizedException(
        'The specified access token is invalid.',
      );
    }

    if (response.statusCode == 204) {
      //! 204: No Content.
      return response;
    }

    if (response.statusCode == 200 && response.body.isEmpty) {
      //! No JSON in response but okay, it's succeeded.
      return response;
    }

    final jsonBody = core.tryJsonDecode(response, response.body);

    if (jsonBody.containsKey(ResponseField.errors.value)) {
      final errors = jsonBody[ResponseField.errors.value];
      for (final error in errors) {
        if (error['code'] == 88) {
          throw core.RateLimitExceededException(error['message'] ?? '');
        }
      }
    }

    return response;
  }

  Map<String, dynamic> _checkStreamedResponse(
    final http.StreamedResponse response,
    final String event,
  ) {
    final jsonBody = core.tryJsonDecode(
      _checkStreamedResponseError(response, event),
      event,
    );

    if (!jsonBody.containsKey(ResponseField.data.value)) {
      throw core.TwitterException(
        'No response data exists for the request.',
        response,
        event,
      );
    }

    return jsonBody;
  }

  http.StreamedResponse _checkStreamedResponseError(
    final http.StreamedResponse response,
    final String event,
  ) {
    if (response.statusCode == 401) {
      throw core.UnauthorizedException(
          'The specified access token is invalid.');
    }

    final jsonBody = core.tryJsonDecode(response, event);

    if (jsonBody.containsKey(ResponseField.errors.value)) {
      final errors = jsonBody[ResponseField.errors.value];
      for (final error in errors) {
        if (error['code'] == 88) {
          throw core.RateLimitExceededException(error['message'] ?? '');
        }
      }
    }

    return response;
  }
}

class ResponseHeaderConverter {
  const ResponseHeaderConverter();

  Map<String, dynamic> convert(final Map<String, String> input) => {
        //! Although it rarely occurs, there is a case where the header does not
        //! contain rate limiting information.
        'x-rate-limit-limit': _getInt(input, 'x-rate-limit-limit'),
        'x-rate-limit-remaining': _getInt(input, 'x-rate-limit-remaining'),
        'x-rate-limit-reset': _getDateTimeString(input, 'x-rate-limit-reset'),
      };

  int _getInt(final Map<String, String> input, final String key) =>
      input.containsKey(key) ? int.parse(input[key]!) : 0;

  String _getDateTimeString(final Map<String, String> input, final String key) {
    if (!input.containsKey(key)) {
      return DateTime.fromMillisecondsSinceEpoch(0).toString();
    }

    return DateTime.fromMillisecondsSinceEpoch(
      int.parse(input[key]!) * 1000,
    ).toString();
  }
}
