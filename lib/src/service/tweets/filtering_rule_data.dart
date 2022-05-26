// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtering_rule_data.freezed.dart';
part 'filtering_rule_data.g.dart';

@freezed
class FilteringRuleData with _$FilteringRuleData {
  const factory FilteringRuleData({
    String? id,
    required String value,
    String? tag,
  }) = _FilteringRuleData;

  factory FilteringRuleData.fromJson(Map<String, Object?> json) =>
      _$FilteringRuleDataFromJson(json);
}
