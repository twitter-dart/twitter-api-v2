// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'filtering_rule_summary.dart';

part 'filtering_rule_meta.freezed.dart';
part 'filtering_rule_meta.g.dart';

@freezed
class FilteringRuleMeta with _$FilteringRuleMeta {
  const factory FilteringRuleMeta({
    @JsonKey(name: 'sent') DateTime? sentAt,
    FilteringRuleSummary? summary,
  }) = _FilteringRuleMeta;

  factory FilteringRuleMeta.fromJson(Map<String, Object?> json) =>
      _$FilteringRuleMetaFromJson(json);
}
