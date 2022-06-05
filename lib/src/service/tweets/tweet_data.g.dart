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
          conversationId:
              $checkedConvert('conversation_id', (v) => v as String?),
          referencedTweets: $checkedConvert(
              'referenced_tweets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ReferencedTweet.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          contextAnnotations: $checkedConvert(
              'context_annotations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TweetContextAnnotationGroup.fromJson(
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
          publicMetrics: $checkedConvert(
              'public_metrics',
              (v) => v == null
                  ? null
                  : PublicTweetMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : TwitterGeo.fromJson(Map<String, Object?>.from(v as Map))),
          lang: $checkedConvert('lang', (v) => v as String?),
          isPossiblySensitive:
              $checkedConvert('possibly_sensitive', (v) => v as bool?),
          replySetting: $checkedConvert('reply_settings',
              (v) => $enumDecodeNullable(_$ReplySettingEnumMap, v)),
          source: $checkedConvert('source', (v) => v as String?),
          withheld: $checkedConvert(
              'withheld',
              (v) => v == null
                  ? null
                  : TweetWithheld.fromJson(
                      Map<String, Object?>.from(v as Map))),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'inReplyToUserId': 'in_reply_to_user_id',
        'conversationId': 'conversation_id',
        'referencedTweets': 'referenced_tweets',
        'contextAnnotations': 'context_annotations',
        'publicMetrics': 'public_metrics',
        'isPossiblySensitive': 'possibly_sensitive',
        'replySetting': 'reply_settings',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_TweetDataToJson(_$_TweetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'author_id': instance.authorId,
      'in_reply_to_user_id': instance.inReplyToUserId,
      'conversation_id': instance.conversationId,
      'referenced_tweets': instance.referencedTweets,
      'context_annotations': instance.contextAnnotations,
      'entities': instance.entities,
      'attachments': instance.attachments,
      'public_metrics': instance.publicMetrics,
      'geo': instance.geo,
      'lang': instance.lang,
      'possibly_sensitive': instance.isPossiblySensitive,
      'reply_settings': _$ReplySettingEnumMap[instance.replySetting],
      'source': instance.source,
      'withheld': instance.withheld,
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$ReplySettingEnumMap = {
  ReplySetting.everyone: 'everyone',
  ReplySetting.mentionedUsers: 'mentionedUsers',
  ReplySetting.following: 'following',
};
