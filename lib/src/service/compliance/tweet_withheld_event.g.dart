// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_withheld_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetWithheldEvent _$$_TweetWithheldEventFromJson(Map json) =>
    $checkedCreate(
      r'_$_TweetWithheldEvent',
      json,
      ($checkedConvert) {
        final val = _$_TweetWithheldEvent(
          tweet: $checkedConvert(
              'tweet',
              (v) =>
                  TweetEventData.fromJson(Map<String, Object?>.from(v as Map))),
          withheldInCountries: $checkedConvert(
              'withheld_in_countries', (v) => v as List<dynamic>),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'withheldInCountries': 'withheld_in_countries',
        'eventAt': 'event_at'
      },
    );

Map<String, dynamic> _$$_TweetWithheldEventToJson(
        _$_TweetWithheldEvent instance) =>
    <String, dynamic>{
      'tweet': instance.tweet.toJson(),
      'withheld_in_countries': instance.withheldInCountries,
      'event_at': instance.eventAt.toIso8601String(),
    };
