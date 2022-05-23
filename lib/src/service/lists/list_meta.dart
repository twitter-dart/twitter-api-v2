// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_meta.freezed.dart';
part 'list_meta.g.dart';

@freezed
class ListMeta with _$ListMeta {
  const factory ListMeta({
    @JsonKey(name: 'result_count') int? resultCount,
    @JsonKey(name: 'next_token') String? nextToken,
    @JsonKey(name: 'previous_token') String? previousToken,
  }) = _ListMeta;

  factory ListMeta.fromJson(Map<String, Object?> json) =>
      _$ListMetaFromJson(json);
}
