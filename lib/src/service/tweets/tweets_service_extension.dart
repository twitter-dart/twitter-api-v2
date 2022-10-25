// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../response/twitter_response.dart';
import 'tweet_data.dart';
import 'tweet_param.dart';
import 'tweet_reply_param.dart';
import 'tweets_service.dart';

extension TweetServiceExtension on TweetsService {
  /// Create a threaded tweet based on the [tweets] parameter.
  ///
  /// Threads are created in the order in which the [tweets] list is stored.
  /// This means that an element with an index of 0 will be the root tweet,
  /// and an element with `tweets.length - 1` will be the lowest threaded tweet.
  ///
  /// If the threaded tweet you are creating is a reply to a specific tweet,
  /// specify [TweetReplyParam] in the root [TweetParam].
  ///
  /// You can set a [TweetReplyParam] object to a non-root [TweetParam],
  /// but it will be ignored for non-root tweets. If the [tweets] element is
  /// less than 2, an [ArgumentError] is always raised because the requirement
  /// to create threaded tweets is not met.
  ///
  /// This method also internally uses [createTweet] to create a tweet.
  /// So, note that this means that if the rate limit for [createTweet] is
  /// reached using the [createThreadTweets] method,
  /// `RateLimitExceededException` will always be raised.
  Future<List<TwitterResponse<TweetData, void>>> createThreadTweets({
    required List<TweetParam> tweets,
  }) async {
    if (tweets.length < 2) {
      throw ArgumentError(
        'At least 2 tweet datasets are required to create a threaded tweet.',
      );
    }

    final responses = <TwitterResponse<TweetData, void>>[];

    final root = tweets.first;
    final rootTweet = await createTweet(
      text: root.text,
      quoteTweetId: root.quoteTweetId,
      forSuperFollowersOnly: root.forSuperFollowersOnly,
      replySetting: root.replySetting,
      directMessageDeepLink: root.directMessageDeepLink,
      media: root.media,
      geo: root.geo,
      poll: root.poll,
      reply: root.reply,
    );

    responses.add(rootTweet);

    String parentTweetId = rootTweet.data.id;
    for (final tweet in tweets.sublist(1)) {
      final childTweet = await createTweet(
        text: tweet.text,
        quoteTweetId: tweet.quoteTweetId,
        forSuperFollowersOnly: tweet.forSuperFollowersOnly,
        replySetting: tweet.replySetting,
        directMessageDeepLink: tweet.directMessageDeepLink,
        media: tweet.media,
        geo: tweet.geo,
        poll: tweet.poll,
        reply: TweetReplyParam(
          inReplyToTweetId: parentTweetId,
        ),
      );

      responses.add(childTweet);

      parentTweetId = childTweet.data.id;
    }

    return responses;
  }
}
