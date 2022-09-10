// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum TopicField implements Serializable {
  /// `id`
  id('id'),

  /// `name`
  name('name'),

  /// `description`
  description('description');

  @override
  final String value;

  const TopicField(this.value);
}
