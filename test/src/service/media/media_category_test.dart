// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/media/media_category.dart';

void main() {
  test('.name', () {
    expect(MediaCategory.tweetImage.name, 'tweetImage');
    expect(MediaCategory.tweetGif.name, 'tweetGif');
    expect(MediaCategory.tweetVideo.name, 'tweetVideo');
  });

  test('.value', () {
    expect(MediaCategory.tweetImage.value, 'TWEET_IMAGE');
    expect(MediaCategory.tweetGif.value, 'TWEET_GIF');
    expect(MediaCategory.tweetVideo.value, 'TWEET_VIDEO');
  });

  group('.fromMimeType', () {
    test('with png', () {
      final mimeType = MediaCategory.fromMimeType('image/png');

      expect(mimeType, MediaCategory.tweetImage);
    });

    test('with gif', () {
      final mimeType = MediaCategory.fromMimeType('image/gif');

      expect(mimeType, MediaCategory.tweetGif);
    });

    test('with video', () {
      final mimeType = MediaCategory.fromMimeType('video/mp4');

      expect(mimeType, MediaCategory.tweetVideo);
    });
  });
}
