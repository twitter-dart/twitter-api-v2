// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum DirectMessageExpansion implements Serializable {
  /// `attachments.media_keys`
  attachmentsMediaKeys('attachments.media_keys'),

  /// `referenced_tweets.id`
  referencedTweetsId('referenced_tweets.id'),

  /// `sender_id`
  senderId('sender_id'),

  /// `participant_id/;s`
  participantIds('participant_ids');

  @override
  final String value;

  const DirectMessageExpansion(this.value);
}
