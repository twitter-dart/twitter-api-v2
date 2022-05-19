// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referenced_tweet_data.freezed.dart';
part 'referenced_tweet_data.g.dart';

@freezed
class ReferencedTweetData with _$ReferencedTweetData {
  const factory ReferencedTweetData({
    required String id,
    required String type,
  }) = _ReferencedTweetData;

  factory ReferencedTweetData.fromJson(Map<String, Object?> json) =>
      _$ReferencedTweetDataFromJson(json);
}
