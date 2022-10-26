// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetEvent _$$_TweetEventFromJson(Map json) => $checkedCreate(
      r'_$_TweetEvent',
      json,
      ($checkedConvert) {
        final val = _$_TweetEvent(
          tweet: $checkedConvert(
              'tweet',
              (v) =>
                  TweetEventData.fromJson(Map<String, Object?>.from(v as Map))),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'eventAt': 'event_at'},
    );

Map<String, dynamic> _$$_TweetEventToJson(_$_TweetEvent instance) =>
    <String, dynamic>{
      'tweet': instance.tweet.toJson(),
      'event_at': instance.eventAt.toIso8601String(),
    };
