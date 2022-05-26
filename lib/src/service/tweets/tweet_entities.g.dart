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
          mentions: $checkedConvert(
              'mentions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TweetMention.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetEntitiesToJson(_$_TweetEntities instance) =>
    <String, dynamic>{
      'mentions': instance.mentions,
    };
