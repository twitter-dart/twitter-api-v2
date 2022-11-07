// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/data.dart';
import 'dm_event_type.dart';
import 'dm_referenced_tweet.dart';

part 'dm_event_data.freezed.dart';
part 'dm_event_data.g.dart';

@freezed
class DMEventData with _$DMEventData implements Data {
  const factory DMEventData({
    /// The id of the Direct Message event.
    required String id,

    /// The type of event.
    required DMEventType eventType,

    /// The text included in the Direct Message.
    String? text,

    /// The id of the user who sent the Direct Message.
    String? senderId,

    /// The id of the Direct Message to which the event belongs.
    @JsonKey(name: 'dm_conversation_id') String? conversationId,

    /// Expansion of a "shared" Tweet in the Direct Message.
    ///
    /// If the parent Tweet is a Retweet, a Retweet with comment
    /// (also known as Quoted Tweet) or a Reply, it will include the
    /// related Tweet referenced to by its parent.
    List<DMReferencedTweet>? referencedTweets,

    /// The timestamp of the Direct Message event creation.
    DateTime? createdAt,
  }) = _DMEventData;

  factory DMEventData.fromJson(Map<String, Object?> json) =>
      _$DMEventDataFromJson(json);
}
