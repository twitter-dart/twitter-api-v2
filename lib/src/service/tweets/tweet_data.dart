// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../places/place_data.dart';
import 'referenced_tweet_data.dart';
import 'reply_setting.dart';
import 'tweet_attachments.dart';
import 'tweet_context_annotation_group.dart';
import 'tweet_entities.dart';
import 'tweet_public_metrics.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    required String id,
    required String text,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'in_reply_to_user_id') String? inReplyToUserId,
    @JsonKey(name: 'conversation_id') String? conversationId,
    @JsonKey(name: 'referenced_tweets')
        List<ReferencedTweetData>? referencedTweets,
    @JsonKey(name: 'context_annotations')
        List<TweetContextAnnotationGroup>? contextAnnotations,
    TweetEntities? entities,
    TweetAttachments? attachments,
    @JsonKey(name: 'public_metrics') TweetPublicMetrics? publicMetrics,
    PlaceData? geo,
    String? lang,
    @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
    @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
    String? source,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
