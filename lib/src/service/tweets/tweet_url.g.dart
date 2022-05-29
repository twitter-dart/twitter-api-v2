// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetUrl _$$_TweetUrlFromJson(Map json) => $checkedCreate(
      r'_$_TweetUrl',
      json,
      ($checkedConvert) {
        final val = _$_TweetUrl(
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          expandedUrl: $checkedConvert('expanded_url', (v) => v as String),
          displayUrl: $checkedConvert('display_url', (v) => v as String),
          mediaKey: $checkedConvert('media_key', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'expandedUrl': 'expanded_url',
        'displayUrl': 'display_url',
        'mediaKey': 'media_key'
      },
    );

Map<String, dynamic> _$$_TweetUrlToJson(_$_TweetUrl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'url': instance.url,
      'expanded_url': instance.expandedUrl,
      'display_url': instance.displayUrl,
      'media_key': instance.mediaKey,
    };
