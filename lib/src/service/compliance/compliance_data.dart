// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'job_status.dart';
import 'job_type.dart';

part 'compliance_data.freezed.dart';
part 'compliance_data.g.dart';

@freezed
class ComplianceData with _$ComplianceData {
  const factory ComplianceData({
    required String id,
    required JobType type,
    required JobStatus status,
    required bool resumable,
    required String uploadUrl,
    required String downloadUrl,
    required DateTime uploadExpiresAt,
    required DateTime downloadExpiresAt,
    required DateTime createdAt,
  }) = _ComplianceData;

  factory ComplianceData.fromJson(Map<String, Object?> json) =>
      _$ComplianceDataFromJson(json);
}
