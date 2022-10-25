// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

part 'tweet_edit_controls.freezed.dart';
part 'tweet_edit_controls.g.dart';

@freezed
class TweetEditControls with _$TweetEditControls {
  const factory TweetEditControls({
    /// A flag indicating whether the tweet is editable or not.
    ///
    /// Editable Tweets can be edited for the first 30 minutes after creation.
    @JsonKey(name: 'is_edit_eligible') required bool isEditable,

    /// A number indicating how many more tweets will be allowed to be edited.
    ///
    /// Tweet can be edited up to 5 times.
    @JsonKey(name: 'edits_remaining')
    @_RemainingCountConverter()
        required int remainingCount,

    /// Indicates when the permission to edit tweets will expire.
    @JsonKey(name: 'editable_until') required DateTime expireAt,
  }) = _TweetEditControls;

  factory TweetEditControls.fromJson(Map<String, Object?> json) =>
      _$TweetEditControlsFromJson(json);
}

class _RemainingCountConverter implements JsonConverter<int, String> {
  /// Returns the new instance of [_RemainingCountConverter].
  const _RemainingCountConverter();

  @override
  int fromJson(String value) => int.parse(value);

  @override
  String toJson(int value) => value.toString();
}
