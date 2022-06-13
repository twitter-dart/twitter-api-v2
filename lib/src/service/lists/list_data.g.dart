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
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String?),
          followerCount: $checkedConvert('follower_count', (v) => v as int?),
          memberCount: $checkedConvert('member_count', (v) => v as int?),
          isPrivate: $checkedConvert('private', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ownerId': 'owner_id',
        'createdAt': 'created_at',
        'followerCount': 'follower_count',
        'memberCount': 'member_count',
        'isPrivate': 'private'
      },
    );

Map<String, dynamic> _$$_ListDataToJson(_$_ListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner_id': instance.ownerId,
      'created_at': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'follower_count': instance.followerCount,
      'member_count': instance.memberCount,
      'private': instance.isPrivate,
    };
