// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'withheld_scope.dart';

part 'tweet_withheld.freezed.dart';
part 'tweet_withheld.g.dart';

@freezed
class TweetWithheld with _$TweetWithheld {
  const factory TweetWithheld({
    @JsonKey(name: 'copyright') required bool isCopyright,
    @JsonKey(name: 'country_codes') List<String>? countryCodes,
    required WithheldScope scope,
  }) = _TweetWithheld;

  factory TweetWithheld.fromJson(Map<String, Object?> json) =>
      _$TweetWithheldFromJson(json);
}
