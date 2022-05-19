// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_geo_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetGeoCoordinates _$$_TweetGeoCoordinatesFromJson(Map json) =>
    $checkedCreate(
      r'_$_TweetGeoCoordinates',
      json,
      ($checkedConvert) {
        final val = _$_TweetGeoCoordinates(
          type: $checkedConvert('type', (v) => v as String),
          coordinates: $checkedConvert(
              'coordinates',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetGeoCoordinatesToJson(
        _$_TweetGeoCoordinates instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
