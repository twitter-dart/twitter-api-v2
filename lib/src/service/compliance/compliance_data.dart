// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/compliance/job_status.dart';
import 'package:twitter_api_v2/src/service/compliance/job_type.dart';

part 'compliance_data.freezed.dart';
part 'compliance_data.g.dart';

@freezed
class ComplianceData with _$ComplianceData {
  const factory ComplianceData({
    required String id,
    required JobType type,
    required JobStatus status,
    required bool resumable,
    @JsonKey(name: 'upload_url') required String uploadUrl,
    @JsonKey(name: 'download_url') required String downloadUrl,
    @JsonKey(name: 'upload_expires_at') required DateTime uploadExpiresAt,
    @JsonKey(name: 'download_expires_at') required DateTime downloadExpiresAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _ComplianceData;

  factory ComplianceData.fromJson(Map<String, Object?> json) =>
      _$ComplianceDataFromJson(json);
}
