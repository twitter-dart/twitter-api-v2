// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'poll_option.dart';

part 'poll_data.freezed.dart';
part 'poll_data.g.dart';

@freezed
class PollData with _$PollData {
  const factory PollData({
    required String id,
    required List<PollOption> options,
  }) = _PollData;

  factory PollData.fromJson(Map<String, Object?> json) =>
      _$PollDataFromJson(json);
}