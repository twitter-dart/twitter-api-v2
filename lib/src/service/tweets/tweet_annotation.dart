// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_annotation.freezed.dart';
part 'tweet_annotation.g.dart';

@freezed
class TweetAnnotation with _$TweetAnnotation {
  const factory TweetAnnotation({
    required int start,
    required int end,
    required double probability,
    required String type,
    @JsonKey(name: 'normalized_text') required String normalizedText,
  }) = _TweetAnnotation;

  factory TweetAnnotation.fromJson(Map<String, Object?> json) =>
      _$TweetAnnotationFromJson(json);
}
