// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'tweet_type.dart';

part 'referenced_tweet.freezed.dart';
part 'referenced_tweet.g.dart';

@freezed
class ReferencedTweet with _$ReferencedTweet {
  const factory ReferencedTweet({
    required String id,
    required TweetType type,
  }) = _ReferencedTweet;

  factory ReferencedTweet.fromJson(Map<String, Object?> json) =>
      _$ReferencedTweetFromJson(json);
}
