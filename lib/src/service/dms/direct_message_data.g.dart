// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'direct_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DirectMessageData _$$_DirectMessageDataFromJson(Map json) => $checkedCreate(
      r'_$_DirectMessageData',
      json,
      ($checkedConvert) {
        final val = _$_DirectMessageData(
          id: $checkedConvert('id', (v) => v as String),
          eventType: $checkedConvert('event_type',
              (v) => $enumDecode(_$DirectMessageEventTypeEnumMap, v)),
          text: $checkedConvert('text', (v) => v as String?),
          senderId: $checkedConvert('sender_id', (v) => v as String?),
          conversationId:
              $checkedConvert('dm_conversation_id', (v) => v as String?),
          referencedTweets: $checkedConvert(
              'referenced_tweets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DMReferencedTweet.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventType': 'event_type',
        'senderId': 'sender_id',
        'conversationId': 'dm_conversation_id',
        'referencedTweets': 'referenced_tweets',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_DirectMessageDataToJson(
        _$_DirectMessageData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_type': _$DirectMessageEventTypeEnumMap[instance.eventType]!,
      'text': instance.text,
      'sender_id': instance.senderId,
      'dm_conversation_id': instance.conversationId,
      'referenced_tweets':
          instance.referencedTweets?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$DirectMessageEventTypeEnumMap = {
  DirectMessageEventType.messageCreate: 'MessageCreate',
  DirectMessageEventType.participantsJoin: 'ParticipantsJoin',
  DirectMessageEventType.participantsLeave: 'ParticipantsLeave',
};
