// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaData _$$_MediaDataFromJson(Map json) => $checkedCreate(
      r'_$_MediaData',
      json,
      ($checkedConvert) {
        final val = _$_MediaData(
          type: $checkedConvert('type', (v) => v as String),
          mediaKeys: $checkedConvert('media_keys',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'mediaKeys': 'media_keys'},
    );

Map<String, dynamic> _$$_MediaDataToJson(_$_MediaData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'media_keys': instance.mediaKeys,
    };
