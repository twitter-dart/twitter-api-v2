// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    required String id,
    required String text,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
