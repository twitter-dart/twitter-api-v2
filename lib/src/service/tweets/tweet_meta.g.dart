// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetMeta _$$_TweetMetaFromJson(Map<String, dynamic> json) => _$_TweetMeta(
      newestId: json['newest_id'] as String,
      oldestId: json['oldest_id'] as String,
      resultCount: json['result_count'] as int,
    );

Map<String, dynamic> _$$_TweetMetaToJson(_$_TweetMeta instance) =>
    <String, dynamic>{
      'newest_id': instance.newestId,
      'oldest_id': instance.oldestId,
      'result_count': instance.resultCount,
    };
