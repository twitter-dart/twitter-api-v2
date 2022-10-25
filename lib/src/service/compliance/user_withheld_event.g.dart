// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_withheld_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserWithheldEvent _$$_UserWithheldEventFromJson(Map json) => $checkedCreate(
      r'_$_UserWithheldEvent',
      json,
      ($checkedConvert) {
        final val = _$_UserWithheldEvent(
          user: $checkedConvert(
              'user',
              (v) =>
                  UserEventData.fromJson(Map<String, Object?>.from(v as Map))),
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

Map<String, dynamic> _$$_UserWithheldEventToJson(
        _$_UserWithheldEvent instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'withheld_in_countries': instance.withheldInCountries,
      'event_at': instance.eventAt.toIso8601String(),
    };
