// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/lists/list_field.dart';

void main() {
  test('.value', () {
    expect(ListField.createdAt.value, 'created_at');
    expect(ListField.description.value, 'description');
    expect(ListField.followerCount.value, 'follower_count');
    expect(ListField.memberCount.value, 'member_count');
    expect(ListField.ownerId.value, 'owner_id');
    expect(ListField.private.value, 'private');
  });
}
