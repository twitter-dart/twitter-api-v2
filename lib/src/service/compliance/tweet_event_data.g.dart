// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetEventData _$$_TweetEventDataFromJson(Map json) => $checkedCreate(
      r'_$_TweetEventData',
      json,
      ($checkedConvert) {
        final val = _$_TweetEventData(
          tweetId: $checkedConvert('id', (v) => v as String),
          authorId: $checkedConvert('author_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'tweetId': 'id', 'authorId': 'author_id'},
    );

Map<String, dynamic> _$$_TweetEventDataToJson(_$_TweetEventData instance) =>
    <String, dynamic>{
      'id': instance.tweetId,
      'author_id': instance.authorId,
    };
