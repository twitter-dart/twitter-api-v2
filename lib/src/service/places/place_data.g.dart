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
          fullName: $checkedConvert('full_name', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          containedWithin: $checkedConvert('contained_within',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          country: $checkedConvert('country', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : PlaceGeo.fromJson(Map<String, Object?>.from(v as Map))),
          name: $checkedConvert('name', (v) => v as String?),
          placeType: $checkedConvert('place_type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'containedWithin': 'contained_within',
        'countryCode': 'country_code',
        'placeType': 'place_type'
      },
    );

Map<String, dynamic> _$$_PlaceDataToJson(_$_PlaceData instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'id': instance.id,
      'contained_within': instance.containedWithin,
      'country': instance.country,
      'country_code': instance.countryCode,
      'geo': instance.geo,
      'name': instance.name,
      'place_type': instance.placeType,
    };
