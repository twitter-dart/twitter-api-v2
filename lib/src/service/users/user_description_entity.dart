// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/mention.dart';
import '../common/tag.dart';
import '../common/url.dart';

part 'user_description_entity.freezed.dart';
part 'user_description_entity.g.dart';

@freezed
class UserDescriptionEntity with _$UserDescriptionEntity {
  const factory UserDescriptionEntity({
    List<Url>? urls,
    List<Tag>? hashtags,
    List<Tag>? cashtags,
    List<Mention>? mentions,
  }) = _UserDescriptionEntity;

  factory UserDescriptionEntity.fromJson(Map<String, Object?> json) =>
      _$UserDescriptionEntityFromJson(json);
}
