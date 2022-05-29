// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetTag _$$_TweetTagFromJson(Map json) => $checkedCreate(
      r'_$_TweetTag',
      json,
      ($checkedConvert) {
        final val = _$_TweetTag(
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
          tag: $checkedConvert('tag', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetTagToJson(_$_TweetTag instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'tag': instance.tag,
    };
