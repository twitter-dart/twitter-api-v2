// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_count_data.freezed.dart';
part 'tweet_count_data.g.dart';

@freezed
class TweetCountData with _$TweetCountData {
  const factory TweetCountData({
    required DateTime start,
    required DateTime end,
    @JsonKey(name: 'tweet_count') required int count,
  }) = _TweetCountData;

  factory TweetCountData.fromJson(Map<String, Object?> json) =>
      _$TweetCountDataFromJson(json);
}
