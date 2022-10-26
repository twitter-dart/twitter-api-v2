// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_compliance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserComplianceData _$$_UserComplianceDataFromJson(Map json) =>
    $checkedCreate(
      r'_$_UserComplianceData',
      json,
      ($checkedConvert) {
        final val = _$_UserComplianceData(
          scrubGeo: $checkedConvert(
              'scrub_geo',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          delete: $checkedConvert(
              'user_delete',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          undelete: $checkedConvert(
              'user_undelete',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          withheld: $checkedConvert(
              'user_withheld',
              (v) => v == null
                  ? null
                  : UserWithheldEvent.fromJson(
                      Map<String, Object?>.from(v as Map))),
          protect: $checkedConvert(
              'user_protect',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          unprotect: $checkedConvert(
              'user_unprotect',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          suspend: $checkedConvert(
              'user_suspend',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          unsuspend: $checkedConvert(
              'user_unsuspend',
              (v) => v == null
                  ? null
                  : UserEvent.fromJson(Map<String, Object?>.from(v as Map))),
          profileModification: $checkedConvert(
              'user_profile_modification',
              (v) => v == null
                  ? null
                  : UserProfileModificationEvent.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'scrubGeo': 'scrub_geo',
        'delete': 'user_delete',
        'undelete': 'user_undelete',
        'withheld': 'user_withheld',
        'protect': 'user_protect',
        'unprotect': 'user_unprotect',
        'suspend': 'user_suspend',
        'unsuspend': 'user_unsuspend',
        'profileModification': 'user_profile_modification'
      },
    );

Map<String, dynamic> _$$_UserComplianceDataToJson(
        _$_UserComplianceData instance) =>
    <String, dynamic>{
      'scrub_geo': instance.scrubGeo?.toJson(),
      'user_delete': instance.delete?.toJson(),
      'user_undelete': instance.undelete?.toJson(),
      'user_withheld': instance.withheld?.toJson(),
      'user_protect': instance.protect?.toJson(),
      'user_unprotect': instance.unprotect?.toJson(),
      'user_suspend': instance.suspend?.toJson(),
      'user_unsuspend': instance.unsuspend?.toJson(),
      'user_profile_modification': instance.profileModification?.toJson(),
    };
