// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_edit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetEditEvent _$$_TweetEditEventFromJson(Map json) => $checkedCreate(
      r'_$_TweetEditEvent',
      json,
      ($checkedConvert) {
        final val = _$_TweetEditEvent(
          tweet: $checkedConvert(
              'tweet',
              (v) =>
                  TweetEventData.fromJson(Map<String, Object?>.from(v as Map))),
          initialTweetId:
              $checkedConvert('initial_tweet_id', (v) => v as String),
          editTweetIds: $checkedConvert('edit_tweet_ids',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'initialTweetId': 'initial_tweet_id',
        'editTweetIds': 'edit_tweet_ids',
        'eventAt': 'event_at'
      },
    );

Map<String, dynamic> _$$_TweetEditEventToJson(_$_TweetEditEvent instance) =>
    <String, dynamic>{
      'tweet': instance.tweet.toJson(),
      'initial_tweet_id': instance.initialTweetId,
      'edit_tweet_ids': instance.editTweetIds,
      'event_at': instance.eventAt.toIso8601String(),
    };
