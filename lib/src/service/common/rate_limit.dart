// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_limit.freezed.dart';
part 'rate_limit.g.dart';

@freezed
class RateLimit with _$RateLimit {
  const factory RateLimit({
    @JsonKey(name: 'x-rate-limit-limit') required int limitCount,
    @JsonKey(name: 'x-rate-limit-remaining') required int remainingCount,
    @JsonKey(name: 'x-rate-limit-reset') required DateTime resetAt,
  }) = _RateLimit;

  factory RateLimit.fromJson(Map<String, Object?> json) =>
      _$RateLimitFromJson(json);
}
