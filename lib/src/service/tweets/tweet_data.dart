// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../places/place_data.dart';
import 'referenced_tweet_data.dart';
import 'tweet_attachments.dart';
import 'tweet_entities.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    required String id,
    required String text,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'in_reply_to_user_id') String? inReplyToUserId,
    @JsonKey(name: 'referenced_tweets')
        List<ReferencedTweetData>? referencedTweets,
    TweetEntities? entities,
    TweetAttachments? attachments,
    PlaceData? geo,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
