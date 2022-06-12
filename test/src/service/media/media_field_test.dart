// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/twitter_api_v2.dart';

void main() {
  test('.name', () {
    expect(MediaField.altText.value, 'alt_text');
    expect(MediaField.durationMs.value, 'duration_ms');
    expect(MediaField.height.value, 'height');
    expect(MediaField.mediaKey.value, 'media_key');
    expect(MediaField.nonPublicMetrics.value, 'non_public_metrics');
    expect(MediaField.organicMetrics.value, 'organic_metrics');
    expect(MediaField.previewImageUrl.value, 'preview_image_url');
    expect(MediaField.promotedMetrics.value, 'promoted_metrics');
    expect(MediaField.publicMetrics.value, 'public_metrics');
    expect(MediaField.type.value, 'type');
    expect(MediaField.url.value, 'url');
    expect(MediaField.width.value, 'width');
  });
}
