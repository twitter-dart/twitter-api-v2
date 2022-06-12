// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'non_public_media_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NonPublicMediaMetrics _$$_NonPublicMediaMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_NonPublicMediaMetrics',
      json,
      ($checkedConvert) {
        final val = _$_NonPublicMediaMetrics(
          playback0Count: $checkedConvert('playback0_count', (v) => v as int),
          playback25Count: $checkedConvert('playback25_count', (v) => v as int),
          playback50Count: $checkedConvert('playback50_count', (v) => v as int),
          playback75Count: $checkedConvert('playback75_count', (v) => v as int),
          playback100Count:
              $checkedConvert('playback100_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'playback0Count': 'playback0_count',
        'playback25Count': 'playback25_count',
        'playback50Count': 'playback50_count',
        'playback75Count': 'playback75_count',
        'playback100Count': 'playback100_count'
      },
    );

Map<String, dynamic> _$$_NonPublicMediaMetricsToJson(
        _$_NonPublicMediaMetrics instance) =>
    <String, dynamic>{
      'playback0_count': instance.playback0Count,
      'playback25_count': instance.playback25Count,
      'playback50_count': instance.playback50Count,
      'playback75_count': instance.playback75Count,
      'playback100_count': instance.playback100Count,
    };
