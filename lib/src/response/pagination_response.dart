// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import 'twitter_response.dart';

class PaginationResponse<D, M> extends TwitterResponse<D, M> {
  const PaginationResponse({
    required this.userContext,
    required this.unencodedPath,
    required this.queryParameters,
    required super.rateLimit,
    required super.data,
    super.includes,
    super.meta,
  });

  final core.UserContext userContext;
  final String unencodedPath;
  final Map<String, dynamic> queryParameters;
}
