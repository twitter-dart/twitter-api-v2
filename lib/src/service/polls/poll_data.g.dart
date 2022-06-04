// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'poll_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollData _$$_PollDataFromJson(Map json) => $checkedCreate(
      r'_$_PollData',
      json,
      ($checkedConvert) {
        final val = _$_PollData(
          id: $checkedConvert('id', (v) => v as String),
          options: $checkedConvert(
              'options',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PollOption.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          durationMinutes:
              $checkedConvert('duration_minutes', (v) => v as int?),
          endDatetime: $checkedConvert('end_datetime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          votingStatus: $checkedConvert('voting_status', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'durationMinutes': 'duration_minutes',
        'endDatetime': 'end_datetime',
        'votingStatus': 'voting_status'
      },
    );

Map<String, dynamic> _$$_PollDataToJson(_$_PollData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'options': instance.options,
      'duration_minutes': instance.durationMinutes,
      'end_datetime': instance.endDatetime?.toIso8601String(),
      'voting_status': instance.votingStatus,
    };
