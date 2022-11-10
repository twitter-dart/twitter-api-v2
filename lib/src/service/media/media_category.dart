// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum MediaCategory implements Serializable {
  tweet('TWEET'),
  directMessage('DM');

  @override
  final String value;

  const MediaCategory(this.value);
}
