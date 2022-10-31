// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'uploaded_media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadedMediaData _$$_UploadedMediaDataFromJson(Map json) => $checkedCreate(
      r'_$_UploadedMediaData',
      json,
      ($checkedConvert) {
        final val = _$_UploadedMediaData(
          mediaId:
              $checkedConvert('_media_id_string', (v) => v as String? ?? ''),
          id: $checkedConvert('media_id_string', (v) => v as String),
          expiresAt:
              $checkedConvert('expires_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'mediaId': '_media_id_string',
        'id': 'media_id_string',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$$_UploadedMediaDataToJson(
        _$_UploadedMediaData instance) =>
    <String, dynamic>{
      '_media_id_string': instance.mediaId,
      'media_id_string': instance.id,
      'expires_at': instance.expiresAt.toIso8601String(),
    };
