// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'user_description_entity.dart';
import 'user_url_entity.dart';

part 'user_entities.freezed.dart';
part 'user_entities.g.dart';

@freezed
class UserEntities with _$UserEntities {
  const factory UserEntities({
    UserUrlEntity? url,
    UserDescriptionEntity? description,
  }) = _UserEntities;

  factory UserEntities.fromJson(Map<String, Object?> json) =>
      _$UserEntitiesFromJson(json);
}
