// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'referenced_tweet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferencedTweetData _$$_ReferencedTweetDataFromJson(Map json) =>
    $checkedCreate(
      r'_$_ReferencedTweetData',
      json,
      ($checkedConvert) {
        final val = _$_ReferencedTweetData(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ReferencedTweetDataToJson(
        _$_ReferencedTweetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
