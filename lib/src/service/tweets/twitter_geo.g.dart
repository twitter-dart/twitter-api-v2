// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'twitter_geo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitterGeo _$$_TwitterGeoFromJson(Map json) => $checkedCreate(
      r'_$_TwitterGeo',
      json,
      ($checkedConvert) {
        final val = _$_TwitterGeo(
          placeId: $checkedConvert('place_id', (v) => v as String?),
          coordinates: $checkedConvert(
              'coordinates',
              (v) => v == null
                  ? null
                  : TwitterGeoCoordinates.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'placeId': 'place_id'},
    );

Map<String, dynamic> _$$_TwitterGeoToJson(_$_TwitterGeo instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'coordinates': instance.coordinates,
    };
