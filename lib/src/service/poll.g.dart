// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Poll _$$_PollFromJson(Map json) => $checkedCreate(
      r'_$_Poll',
      json,
      ($checkedConvert) {
        final val = _$_Poll(
          id: $checkedConvert('id', (v) => v as String),
          options: $checkedConvert(
              'options',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PollOption.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'id': instance.id,
      'options': instance.options,
    };
