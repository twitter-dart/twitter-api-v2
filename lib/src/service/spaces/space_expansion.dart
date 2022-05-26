// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../expansion.dart';

/// Represents an extensible field about Space.
enum SpaceExpansion implements Expansion {
  /// `invited_user_ids`
  invitedUserIds('invited_user_ids'),

  /// `speaker_ids`
  speakerIds('speaker_ids'),

  /// `creator_id`
  creatorId('creator_id'),

  /// `host_ids`
  hostIds('host_ids');

  @override
  final String fieldName;

  const SpaceExpansion(this.fieldName);
}
