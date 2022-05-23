// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'place_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceCoordinates _$$_PlaceCoordinatesFromJson(Map json) => $checkedCreate(
      r'_$_PlaceCoordinates',
      json,
      ($checkedConvert) {
        final val = _$_PlaceCoordinates(
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

Map<String, dynamic> _$$_PlaceCoordinatesToJson(_$_PlaceCoordinates instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
