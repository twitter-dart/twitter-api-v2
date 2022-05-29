// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetEntities _$$_TweetEntitiesFromJson(Map json) => $checkedCreate(
      r'_$_TweetEntities',
      json,
      ($checkedConvert) {
        final val = _$_TweetEntities(
          annotations: $checkedConvert(
              'annotations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TweetAnnotation.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          hashtags: $checkedConvert(
              'hashtags',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TweetTag.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          cashtags: $checkedConvert(
              'cashtags',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TweetTag.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          mentions: $checkedConvert(
              'mentions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TweetMention.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          urls: $checkedConvert(
              'urls',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TweetUrl.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetEntitiesToJson(_$_TweetEntities instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'hashtags': instance.hashtags,
      'cashtags': instance.cashtags,
      'mentions': instance.mentions,
      'urls': instance.urls,
    };
