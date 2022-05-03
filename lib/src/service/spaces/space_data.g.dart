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
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SpaceDataToJson(_$_SpaceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$SpaceStateEnumMap[instance.state],
    };

const _$SpaceStateEnumMap = {
  SpaceState.scheduled: 'scheduled',
  SpaceState.live: 'live',
};
