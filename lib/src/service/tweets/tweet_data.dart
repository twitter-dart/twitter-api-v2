// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'geo.dart';
import 'public_tweet_metrics.dart';
import 'referenced_tweet.dart';
import 'reply_setting.dart';
import 'tweet_attachments.dart';
import 'tweet_context_annotation_group.dart';
import 'tweet_entities.dart';
import 'tweet_language.dart';
import 'tweet_withheld.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    required String id,
    required String text,
    String? authorId,
    String? inReplyToUserId,
    String? conversationId,
    List<ReferencedTweet>? referencedTweets,
    List<TweetContextAnnotationGroup>? contextAnnotations,
    TweetEntities? entities,
    TweetAttachments? attachments,
    PublicTweetMetrics? publicMetrics,
    Geo? geo,
    TweetLanguage? lang,
    @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
    @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
    String? source,
    TweetWithheld? withheld,
    DateTime? createdAt,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
