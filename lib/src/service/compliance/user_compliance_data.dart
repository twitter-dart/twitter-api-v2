// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/data.dart';
import 'user_event.dart';
import 'user_profile_modification_event.dart';
import 'user_withheld_event.dart';

part 'user_compliance_data.freezed.dart';
part 'user_compliance_data.g.dart';

@freezed
class UserComplianceData with _$UserComplianceData implements Data {
  const factory UserComplianceData({
    @JsonKey(name: 'scrub_geo') UserEvent? scrubGeo,
    @JsonKey(name: 'user_delete') UserEvent? delete,
    @JsonKey(name: 'user_undelete') UserEvent? undelete,
    @JsonKey(name: 'user_withheld') UserWithheldEvent? withheld,
    @JsonKey(name: 'user_protect') UserEvent? protect,
    @JsonKey(name: 'user_unprotect') UserEvent? unprotect,
    @JsonKey(name: 'user_suspend') UserEvent? suspend,
    @JsonKey(name: 'user_unsuspend') UserEvent? unsuspend,
    @JsonKey(name: 'user_profile_modification')
        UserProfileModificationEvent? profileModification,
  }) = _UserComplianceData;

  factory UserComplianceData.fromJson(Map<String, Object?> json) =>
      _$UserComplianceDataFromJson(json);
}
