// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../expansion.dart';

/// Represents an extensible field about User.
enum UserExpansion implements Expansion {
  /// `pinned_tweet_id`
  pinnedTweetId('pinned_tweet_id');

  @override
  final String fieldName;

  const UserExpansion(this.fieldName);
}
