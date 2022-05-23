// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'place_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceData _$$_PlaceDataFromJson(Map json) => $checkedCreate(
      r'_$_PlaceData',
      json,
      ($checkedConvert) {
        final val = _$_PlaceData(
          placeId: $checkedConvert('place_id', (v) => v as String),
          coordinates: $checkedConvert(
              'coordinates',
              (v) => v == null
                  ? null
                  : PlaceCoordinates.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'placeId': 'place_id'},
    );

Map<String, dynamic> _$$_PlaceDataToJson(_$_PlaceData instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'coordinates': instance.coordinates,
    };
