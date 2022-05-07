// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_data.freezed.dart';
part 'list_data.g.dart';

@freezed
class ListData with _$ListData {
  const factory ListData({
    required String id,
    required String name,
  }) = _ListData;

  factory ListData.fromJson(Map<String, Object?> json) =>
      _$ListDataFromJson(json);
}
