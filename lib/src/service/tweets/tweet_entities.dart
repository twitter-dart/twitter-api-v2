// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/mention.dart';
import '../common/tag.dart';
import '../common/url.dart';
import 'tweet_annotation.dart';

part 'tweet_entities.freezed.dart';
part 'tweet_entities.g.dart';

@freezed
class TweetEntities with _$TweetEntities {
  const factory TweetEntities({
    List<TweetAnnotation>? annotations,
    List<Tag>? hashtags,
    List<Tag>? cashtags,
    List<Mention>? mentions,
    List<Url>? urls,
  }) = _TweetEntities;

  factory TweetEntities.fromJson(Map<String, Object?> json) =>
      _$TweetEntitiesFromJson(json);
}
