// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_scrub_geo_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserScrubGeoEvent _$$_UserScrubGeoEventFromJson(Map json) => $checkedCreate(
      r'_$_UserScrubGeoEvent',
      json,
      ($checkedConvert) {
        final val = _$_UserScrubGeoEvent(
          user: $checkedConvert(
              'user',
              (v) =>
                  UserEventData.fromJson(Map<String, Object?>.from(v as Map))),
          upToTweetId: $checkedConvert('up_to_tweet_id', (v) => v as String),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'upToTweetId': 'up_to_tweet_id',
        'eventAt': 'event_at'
      },
    );

Map<String, dynamic> _$$_UserScrubGeoEventToJson(
        _$_UserScrubGeoEvent instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'up_to_tweet_id': instance.upToTweetId,
      'event_at': instance.eventAt.toIso8601String(),
    };
