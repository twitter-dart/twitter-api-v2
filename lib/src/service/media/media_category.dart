// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum MediaCategory implements Serializable {
  tweetImage('TWEET_IMAGE'),
  tweetGif('TWEET_GIF'),
  tweetVideo('TWEET_VIDEO');

  @override
  final String value;

  const MediaCategory(this.value);

  /// Returns [MediaCategory] based on [mediaMimeType].
  static MediaCategory fromMimeType(final String mediaMimeType) {
    if (mediaMimeType.startsWith('image')) {
      if (mediaMimeType.endsWith('gif')) {
        return tweetGif;
      }

      return tweetImage;
    }

    return tweetVideo;
  }
}
