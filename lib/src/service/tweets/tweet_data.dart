// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'referenced_tweet_data.dart';
import 'tweet_attachments.dart';
import 'tweet_entities.dart';
import 'tweet_geo.dart';

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
    TweetGeo? geo,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);

  /// Returns true if this data has referenced tweets, otherwise false.
  bool get hasReferencedTweets => referencedTweets != null;

  /// Returns true if this data has not referenced tweets, otherwise false.
  bool get hasNotReferencedTweets => !hasReferencedTweets;

  /// Returns true if this data has entities object, otherwise false.
  bool get hasEntities => entities != null;

  /// Returns true if this data has not entities object, otherwise false.
  bool get hasNotEntities => !hasEntities;

  /// Returns true if this data has attachments object, otherwise false.
  bool get hasAttachments => attachments != null;

  /// Returns true if this data has not attachments object, otherwise false.
  bool get hasNotAttachments => !hasAttachments;

  /// Returns true if this data has geo object, otherwise false.
  bool get hasGeo => geo != null;

  /// Returns true if this data has not geo object, otherwise false.
  bool get hasNotGeo => !hasGeo;
}
