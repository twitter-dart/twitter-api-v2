// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtering_rule_summary.freezed.dart';
part 'filtering_rule_summary.g.dart';

@freezed
class FilteringRuleSummary with _$FilteringRuleSummary {
  const factory FilteringRuleSummary({
    @JsonKey(name: 'created') int? createdCount,
    @JsonKey(name: 'not_created') int? notCreatedCount,
    @JsonKey(name: 'deleted') int? deletedCount,
    @JsonKey(name: 'not_deleted') int? notDeletedCount,
  }) = _FilteringRuleSummary;

  factory FilteringRuleSummary.fromJson(Map<String, Object?> json) =>
      _$FilteringRuleSummaryFromJson(json);
}
