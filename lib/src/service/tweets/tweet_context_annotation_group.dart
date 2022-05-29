// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_context_annotation.dart';

part 'tweet_context_annotation_group.freezed.dart';
part 'tweet_context_annotation_group.g.dart';

@freezed
class TweetContextAnnotationGroup with _$TweetContextAnnotationGroup {
  const factory TweetContextAnnotationGroup({
    required TweetContextAnnotation domain,
    required TweetContextAnnotation entity,
  }) = _TweetContextAnnotationGroup;

  factory TweetContextAnnotationGroup.fromJson(Map<String, Object?> json) =>
      _$TweetContextAnnotationGroupFromJson(json);
}
