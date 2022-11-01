// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart';

enum MediaCategory implements Serializable {
  tweetImage('TWEET_IMAGE'),
  tweetGif('TWEET_GIF'),
  tweetVideo('TWEET_VIDEO'),
  videoSubtitle('SUBTITLES');

  @override
  final String value;

  const MediaCategory(this.value);

  /// Returns [MediaCategory] based on [mediaMimeType].
  static MediaCategory valueOf(final String mediaMimeType) {
    if (mediaMimeType.endsWith('x-subrip')) {
      return videoSubtitle;
    }

    if (mediaMimeType.startsWith('video')) {
      return tweetVideo;
    }

    if (mediaMimeType.startsWith('image')) {
      if (mediaMimeType.endsWith('gif')) {
        return tweetGif;
      }

      return tweetImage;
    }

    throw UnsupportedError(
      'Unsupported Mime type [$mediaMimeType].',
    );
  }
}
