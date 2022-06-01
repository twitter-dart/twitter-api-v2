// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/users/user_field.dart';

void main() {
  test('.value', () {
    expect(UserField.id.value, 'id');
    expect(UserField.description.value, 'description');
    expect(UserField.name.value, 'name');
    expect(UserField.username.value, 'username');
    expect(UserField.url.value, 'url');
    expect(UserField.profileImageUrl.value, 'profile_image_url');
    expect(UserField.location.value, 'location');
    expect(UserField.pinnedTweetId.value, 'pinned_tweet_id');
    expect(UserField.protected.value, 'protected');
    expect(UserField.verified.value, 'verified');
    expect(UserField.publicMetrics.value, 'public_metrics');
    expect(UserField.entities.value, 'entities');
    expect(UserField.createdAt.value, 'created_at');
    expect(UserField.withheld.value, 'withheld');
  });
}
