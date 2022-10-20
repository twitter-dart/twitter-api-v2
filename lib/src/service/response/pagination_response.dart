// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'twitter_response.dart';

class PaginationResponse<D, M> extends TwitterResponse<D, M> {
  /// Returns the new instance of [PaginationResponse].
  const PaginationResponse({
    required this.userContext,
    required this.unencodedPath,
    required this.queryParameters,
    required super.rateLimit,
    required super.data,
    super.includes,
    super.meta,
  });

  /// The user context of this page
  final core.UserContext userContext;

  /// The unencoded path of this page
  final String unencodedPath;

  /// The query parameters of this page
  final Map<String, dynamic> queryParameters;
}
