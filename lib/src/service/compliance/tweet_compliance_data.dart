// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/data.dart';
import 'tweet_edit_event.dart';
import 'tweet_event.dart';
import 'tweet_event_type.dart';
import 'tweet_withheld_event.dart';

part 'tweet_compliance_data.freezed.dart';
part 'tweet_compliance_data.g.dart';

@freezed
class TweetComplianceData with _$TweetComplianceData implements Data {
  const factory TweetComplianceData({
    /// A delete Tweet event.
    TweetEvent? delete,

    /// A edit Tweet event.
    TweetEditEvent? tweetEdit,

    /// A withheld Tweet event.
    TweetWithheldEvent? withheld,

    /// A drop Tweet event.
    TweetEvent? drop,

    /// A undrop Tweet event.
    TweetEvent? undrop,
  }) = _TweetComplianceData;

  factory TweetComplianceData.fromJson(Map<String, Object?> json) =>
      _$TweetComplianceDataFromJson(json);
}
