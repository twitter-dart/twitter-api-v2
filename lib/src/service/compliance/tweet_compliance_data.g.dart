// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_compliance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetComplianceData _$$_TweetComplianceDataFromJson(Map json) =>
    $checkedCreate(
      r'_$_TweetComplianceData',
      json,
      ($checkedConvert) {
        final val = _$_TweetComplianceData(
          delete: $checkedConvert(
              'delete',
              (v) => v == null
                  ? null
                  : TweetEvent.fromJson(Map<String, Object?>.from(v as Map))),
          tweetEdit: $checkedConvert(
              'tweet_edit',
              (v) => v == null
                  ? null
                  : TweetEditEvent.fromJson(
                      Map<String, Object?>.from(v as Map))),
          withheld: $checkedConvert(
              'withheld',
              (v) => v == null
                  ? null
                  : TweetWithheldEvent.fromJson(
                      Map<String, Object?>.from(v as Map))),
          drop: $checkedConvert(
              'drop',
              (v) => v == null
                  ? null
                  : TweetEvent.fromJson(Map<String, Object?>.from(v as Map))),
          undrop: $checkedConvert(
              'undrop',
              (v) => v == null
                  ? null
                  : TweetEvent.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'tweetEdit': 'tweet_edit'},
    );

Map<String, dynamic> _$$_TweetComplianceDataToJson(
        _$_TweetComplianceData instance) =>
    <String, dynamic>{
      'delete': instance.delete?.toJson(),
      'tweet_edit': instance.tweetEdit?.toJson(),
      'withheld': instance.withheld?.toJson(),
      'drop': instance.drop?.toJson(),
      'undrop': instance.undrop?.toJson(),
    };
