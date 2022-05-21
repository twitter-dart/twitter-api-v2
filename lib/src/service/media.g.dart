// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map json) => $checkedCreate(
      r'_$_Media',
      json,
      ($checkedConvert) {
        final val = _$_Media(
          type: $checkedConvert('type', (v) => v as String),
          mediaKeys: $checkedConvert('media_keys',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'mediaKeys': 'media_keys'},
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'type': instance.type,
      'media_keys': instance.mediaKeys,
    };
