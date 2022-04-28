// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetData _$$_TweetDataFromJson(Map json) => $checkedCreate(
      r'_$_TweetData',
      json,
      ($checkedConvert) {
        final val = _$_TweetData(
          id: $checkedConvert('id', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetDataToJson(_$_TweetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
