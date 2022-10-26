// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_profile_modification_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModificationEvent _$$_UserProfileModificationEventFromJson(
        Map json) =>
    $checkedCreate(
      r'_$_UserProfileModificationEvent',
      json,
      ($checkedConvert) {
        final val = _$_UserProfileModificationEvent(
          user: $checkedConvert(
              'user',
              (v) =>
                  UserEventData.fromJson(Map<String, Object?>.from(v as Map))),
          profileField: $checkedConvert('profile_field',
              (v) => $enumDecode(_$UserProfileFieldEnumMap, v)),
          newValue: $checkedConvert('new_value', (v) => v as String),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'profileField': 'profile_field',
        'newValue': 'new_value',
        'eventAt': 'event_at'
      },
    );

Map<String, dynamic> _$$_UserProfileModificationEventToJson(
        _$_UserProfileModificationEvent instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'profile_field': _$UserProfileFieldEnumMap[instance.profileField]!,
      'new_value': instance.newValue,
      'event_at': instance.eventAt.toIso8601String(),
    };

const _$UserProfileFieldEnumMap = {
  UserProfileField.name: 'profile.name',
  UserProfileField.location: 'profile.location',
  UserProfileField.description: 'profile.description',
  UserProfileField.url: 'profile.url',
  UserProfileField.profileBanner: 'profile.profileBanner',
  UserProfileField.profileBannerUrl: 'profile.profileBanner.url',
  UserProfileField.profileImage: 'profile.profileImage',
  UserProfileField.profileImageUrl: 'profile.profileImage.url',
};
