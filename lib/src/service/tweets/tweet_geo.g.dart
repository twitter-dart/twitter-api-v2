// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_geo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetGeo _$$_TweetGeoFromJson(Map json) => $checkedCreate(
      r'_$_TweetGeo',
      json,
      ($checkedConvert) {
        final val = _$_TweetGeo(
          placeId: $checkedConvert('place_id', (v) => v as String),
          coordinates: $checkedConvert(
              'coordinates',
              (v) => TweetGeoCoordinates.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'placeId': 'place_id'},
    );

Map<String, dynamic> _$$_TweetGeoToJson(_$_TweetGeo instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'coordinates': instance.coordinates,
    };
