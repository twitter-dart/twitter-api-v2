// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEventData _$$_UserEventDataFromJson(Map json) => $checkedCreate(
      r'_$_UserEventData',
      json,
      ($checkedConvert) {
        final val = _$_UserEventData(
          userId: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'id'},
    );

Map<String, dynamic> _$$_UserEventDataToJson(_$_UserEventData instance) =>
    <String, dynamic>{
      'id': instance.userId,
    };
