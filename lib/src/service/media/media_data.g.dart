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
          key: $checkedConvert('media_key', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$MediaTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'key': 'media_key'},
    );

Map<String, dynamic> _$$_MediaDataToJson(_$_MediaData instance) =>
    <String, dynamic>{
      'media_key': instance.key,
      'type': _$MediaTypeEnumMap[instance.type],
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.animatedGif: 'animated_gif',
};
