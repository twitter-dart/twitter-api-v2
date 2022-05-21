// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'media.dart';
import 'poll.dart';
import 'tweets/tweet_data.dart';
import 'users/user_data.dart';

part 'includes.freezed.dart';
part 'includes.g.dart';

@freezed
class Includes with _$Includes {
  const factory Includes({
    List<TweetData>? tweets,
    List<UserData>? users,
    List<Media>? media,
    List<Poll>? polls,
  }) = _Includes;

  factory Includes.fromJson(Map<String, Object?> json) =>
      _$IncludesFromJson(json);
}
