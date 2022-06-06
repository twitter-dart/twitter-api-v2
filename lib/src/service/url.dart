// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';
part 'url.g.dart';

@freezed
class Url with _$Url {
  const factory Url({
    required int start,
    required int end,
    required String url,
    required String expandedUrl,
    required String displayUrl,
    String? unwoundUrl,
    String? mediaKey,
  }) = _Url;

  factory Url.fromJson(Map<String, Object?> json) => _$UrlFromJson(json);
}
