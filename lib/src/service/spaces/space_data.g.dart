// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'space_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpaceData _$$_SpaceDataFromJson(Map json) => $checkedCreate(
      r'_$_SpaceData',
      json,
      ($checkedConvert) {
        final val = _$_SpaceData(
          id: $checkedConvert('id', (v) => v as String),
          state: $checkedConvert(
              'state', (v) => $enumDecodeNullable(_$SpaceStateEnumMap, v)),
          hostIds: $checkedConvert('host_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          speakerIds: $checkedConvert('speaker_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          invitedUserIds: $checkedConvert('invited_user_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          creatorId: $checkedConvert('creator_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'hostIds': 'host_ids',
        'speakerIds': 'speaker_ids',
        'invitedUserIds': 'invited_user_ids',
        'creatorId': 'creator_id'
      },
    );

Map<String, dynamic> _$$_SpaceDataToJson(_$_SpaceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$SpaceStateEnumMap[instance.state],
      'host_ids': instance.hostIds,
      'speaker_ids': instance.speakerIds,
      'invited_user_ids': instance.invitedUserIds,
      'creator_id': instance.creatorId,
    };

const _$SpaceStateEnumMap = {
  SpaceState.scheduled: 'scheduled',
  SpaceState.live: 'live',
};
