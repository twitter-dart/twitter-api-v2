// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweet_field.dart';

void main() {
  test('.value', () {
    expect(TweetField.attachments.value, 'attachments');
    expect(TweetField.authorId.value, 'author_id');
    expect(TweetField.contextAnnotations.value, 'context_annotations');
    expect(TweetField.conversationId.value, 'conversation_id');
    expect(TweetField.createdAt.value, 'created_at');
    expect(TweetField.entities.value, 'entities');
    expect(TweetField.geo.value, 'geo');
    expect(TweetField.id.value, 'id');
    expect(TweetField.inReplyToUserId.value, 'in_reply_to_user_id');
    expect(TweetField.lang.value, 'lang');
    expect(TweetField.publicMetrics.value, 'public_metrics');
    expect(TweetField.possiblySensitive.value, 'possibly_sensitive');
    expect(TweetField.referencedTweets.value, 'referenced_tweets');
    expect(TweetField.replySettings.value, 'reply_settings');
    expect(TweetField.source.value, 'source');
    expect(TweetField.text.value, 'text');
    expect(TweetField.withheld.value, 'withheld');
  });
}
