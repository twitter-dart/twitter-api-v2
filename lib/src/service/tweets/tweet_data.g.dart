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
          authorId: $checkedConvert('author_id', (v) => v as String?),
          inReplyToUserId:
              $checkedConvert('in_reply_to_user_id', (v) => v as String?),
          referencedTweets: $checkedConvert(
              'referenced_tweets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ReferencedTweetData.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          entities: $checkedConvert(
              'entities',
              (v) => v == null
                  ? null
                  : TweetEntities.fromJson(
                      Map<String, Object?>.from(v as Map))),
          attachments: $checkedConvert(
              'attachments',
              (v) => v == null
                  ? null
                  : TweetAttachments.fromJson(
                      Map<String, Object?>.from(v as Map))),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : PlaceData.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'inReplyToUserId': 'in_reply_to_user_id',
        'referencedTweets': 'referenced_tweets'
      },
    );

Map<String, dynamic> _$$_TweetDataToJson(_$_TweetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'author_id': instance.authorId,
      'in_reply_to_user_id': instance.inReplyToUserId,
      'referenced_tweets': instance.referencedTweets,
      'entities': instance.entities,
      'attachments': instance.attachments,
      'geo': instance.geo,
    };
