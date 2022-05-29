// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_context_annotation.freezed.dart';
part 'tweet_context_annotation.g.dart';

@freezed
class TweetContextAnnotation with _$TweetContextAnnotation {
  const factory TweetContextAnnotation({
    required String id,
    required String name,
    String? description,
  }) = _TweetContextAnnotation;

  factory TweetContextAnnotation.fromJson(Map<String, Object?> json) =>
      _$TweetContextAnnotationFromJson(json);
}
