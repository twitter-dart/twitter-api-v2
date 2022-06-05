// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'twitter_geo_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitterGeoCoordinates _$$_TwitterGeoCoordinatesFromJson(Map json) =>
    $checkedCreate(
      r'_$_TwitterGeoCoordinates',
      json,
      ($checkedConvert) {
        final val = _$_TwitterGeoCoordinates(
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

Map<String, dynamic> _$$_TwitterGeoCoordinatesToJson(
        _$_TwitterGeoCoordinates instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
