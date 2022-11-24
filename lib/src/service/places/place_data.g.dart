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
          id: $checkedConvert('id', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          placeType: $checkedConvert('place_type', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : PlaceGeo.fromJson(Map<String, Object?>.from(v as Map))),
          containedWithin: $checkedConvert('contained_within',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'placeType': 'place_type',
        'countryCode': 'country_code',
        'containedWithin': 'contained_within'
      },
    );

Map<String, dynamic> _$$_PlaceDataToJson(_$_PlaceData instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'full_name': instance.fullName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('place_type', instance.placeType);
  writeNotNull('country', instance.country);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('geo', instance.geo?.toJson());
  writeNotNull('contained_within', instance.containedWithin);
  return val;
}
