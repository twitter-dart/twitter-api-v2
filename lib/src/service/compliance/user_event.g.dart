// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEvent _$$_UserEventFromJson(Map json) => $checkedCreate(
      r'_$_UserEvent',
      json,
      ($checkedConvert) {
        final val = _$_UserEvent(
          user: $checkedConvert(
              'user',
              (v) =>
                  UserEventData.fromJson(Map<String, Object?>.from(v as Map))),
          eventAt:
              $checkedConvert('event_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'eventAt': 'event_at'},
    );

Map<String, dynamic> _$$_UserEventToJson(_$_UserEvent instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'event_at': instance.eventAt.toIso8601String(),
    };
