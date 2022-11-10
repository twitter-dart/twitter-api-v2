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
    expect(MediaCategory.videoCaption.name, 'videoCaption');
  });

  test('.value', () {
    expect(MediaCategory.tweetImage.value, 'TWEET_IMAGE');
    expect(MediaCategory.tweetGif.value, 'TWEET_GIF');
    expect(MediaCategory.tweetVideo.value, 'TWEET_VIDEO');
    expect(MediaCategory.videoCaption.value, 'SUBTITLES');
  });

  group('.valueOf', () {
    test('with png', () {
      final mimeType = MediaCategory.valueOf('image/png');

      expect(mimeType, MediaCategory.tweetImage);
    });

    test('with gif', () {
      final mimeType = MediaCategory.valueOf('image/gif');

      expect(mimeType, MediaCategory.tweetGif);
    });

    test('with video', () {
      final mimeType = MediaCategory.valueOf('video/mp4');

      expect(mimeType, MediaCategory.tweetVideo);
    });

    test('with caption (.srt)', () {
      final mimeType = MediaCategory.valueOf('application/x-subrip');

      expect(mimeType, MediaCategory.videoCaption);
    });

    test('with unsupported mime type', () {
      expect(
        () => MediaCategory.valueOf('application/vnd.ms-excel'),
        throwsA(
          allOf(
            isA<UnsupportedError>(),
            predicate(
              (dynamic e) =>
                  e.message ==
                  'Unsupported Mime type [application/vnd.ms-excel].',
            ),
          ),
        ),
      );
    });
  });
}
