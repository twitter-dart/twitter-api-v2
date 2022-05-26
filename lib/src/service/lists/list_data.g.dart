// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListData _$$_ListDataFromJson(Map json) => $checkedCreate(
      r'_$_ListData',
      json,
      ($checkedConvert) {
        final val = _$_ListData(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          ownerId: $checkedConvert('owner_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'ownerId': 'owner_id'},
    );

Map<String, dynamic> _$$_ListDataToJson(_$_ListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner_id': instance.ownerId,
    };
