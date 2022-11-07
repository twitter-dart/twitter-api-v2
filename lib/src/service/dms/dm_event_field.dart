// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum DMEventField implements Serializable {
  /// `id`
  id('id'),

  /// `text`
  text('text'),

  /// `dm_conversation_id`
  conversationId('dm_conversation_id'),

  /// `sender_id`
  senderId('sender_id'),

  /// `participant_ids`
  participantIds('participant_ids'),

  /// `referenced_tweets`
  referencedTweets('referenced_tweets'),

  /// `attachments`
  attachments('attachments'),

  /// `created_at`
  createdAt('created_at');

  @override
  final String value;

  const DMEventField(this.value);
}
