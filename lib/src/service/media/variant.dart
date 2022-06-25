// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant.freezed.dart';
part 'variant.g.dart';

@freezed
class Variant with _$Variant {
  const factory Variant({
    int? bitRate,
    String? contentType,
    String? url,
  }) = _Variant;

  factory Variant.fromJson(Map<String, Object?> json) =>
      _$VariantFromJson(json);
}
