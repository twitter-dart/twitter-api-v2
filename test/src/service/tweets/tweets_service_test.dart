// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_api_v2/src/client/user_context.dart';

import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:test/test.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

import '../../../mocks/client_context_stubs.dart' as context;

void main() {
  test('.createTweet', () async {
    final tweetsService = TweetsService(
      context: context.buildPostStub(
        '/2/tweets',
        'test/tweets/data/create_tweet.json',
      ),
    );

    final response = await tweetsService.createTweet(text: 'Hello, World!');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<TweetData>());
    expect(response.data.id, '1445880548472328192');
    expect(response.data.text, 'Hello, World!');
  });

  test('.destroyTweet', () async {
    final tweetsService = TweetsService(
      context: context.buildDeleteStub(
        '/2/tweets/1111',
        'test/tweets/data/destroy_tweet.json',
      ),
    );

    final response = await tweetsService.destroyTweet(tweetId: '1111');

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.createLike', () async {
    final tweetsService = TweetsService(
      context: context.buildPostStub(
        '/2/users/0000/likes',
        'test/tweets/data/create_like.json',
      ),
    );

    final response = await tweetsService.createLike(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyLike', () async {
    final tweetsService = TweetsService(
      context: context.buildDeleteStub(
        '/2/users/0000/likes/1111',
        'test/tweets/data/destroy_like.json',
      ),
    );

    final response = await tweetsService.destroyLike(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.createRetweet', () async {
    final tweetsService = TweetsService(
      context: context.buildPostStub(
        '/2/users/0000/retweets',
        'test/tweets/data/create_retweet.json',
      ),
    );

    final response = await tweetsService.createRetweet(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyRetweet', () async {
    final tweetsService = TweetsService(
      context: context.buildDeleteStub(
        '/2/users/0000/retweets/1111',
        'test/tweets/data/destroy_retweet.json',
      ),
    );

    final response = await tweetsService.destroyRetweet(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.likingUsers', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets/1111/liking_users',
        'test/tweets/data/liking_users.json',
        {},
      ),
    );

    final response = await tweetsService.likingUsers(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 5);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 5);
  });

  test('.likedTweets', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/users/0000/liked_tweets',
        'test/tweets/data/liked_tweets.json',
        {},
      ),
    );

    final response = await tweetsService.likingTweets(
      userId: '0000',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 5);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 5);
  });

  test('.retweetedBy', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets/1111/retweeted_by',
        'test/tweets/data/retweeted_by.json',
        {},
      ),
    );

    final response = await tweetsService.retweetedBy(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 3);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 3);
  });

  test('.quoteTweets', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets/1111/quote_tweets',
        'test/tweets/data/quote_tweets.json',
        {},
      ),
    );

    final response = await tweetsService.quoteTweets(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 10);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 10);
  });

  test('.searchRecent', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets/search/recent',
        'test/tweets/data/search_recent.json',
        {'query': 'hello'},
      ),
    );

    final response = await tweetsService.searchRecent(
      query: 'hello',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 6);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 6);
  });

  test('.searchAll', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2AppOnly,
        '/2/tweets/search/all',
        'test/tweets/data/search_all.json',
        {'query': 'hello'},
      ),
    );

    final response = await tweetsService.searchAll(
      query: 'hello',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 6);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 6);
  });

  test('.lookupTweet', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets/1111',
        'test/tweets/data/lookup_tweet.json',
        {},
      ),
    );

    final response = await tweetsService.lookupTweet(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<TweetData>());
    expect(response.data.id, '1067094924124872705');
  });

  test('.lookupTweets', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/tweets',
        'test/tweets/data/lookup_tweets.json',
        {'ids': '1261326399320715264,1278347468690915330'},
      ),
    );

    final response = await tweetsService.lookupTweets(
      tweetIds: ['1261326399320715264', '1278347468690915330'],
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.data.length, 2);
  });

  test('.countRecent', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2AppOnly,
        '/2/tweets/counts/recent',
        'test/tweets/data/counts_recent.json',
        {'query': 'hello'},
      ),
    );

    final response = await tweetsService.countRecent(
      query: 'hello',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetCountData>>());
    expect(response.meta, isA<TweetCountMeta>());
    expect(response.meta!.total, 744364);
  });

  test('.countAll', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2AppOnly,
        '/2/tweets/counts/all',
        'test/tweets/data/counts_all.json',
        {'query': 'hello'},
      ),
    );

    final response = await tweetsService.countAll(
      query: 'hello',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetCountData>>());
    expect(response.meta, isA<TweetCountMeta>());
    expect(response.meta!.total, 744364);
  });

  test('.createBookmark', () async {
    final tweetsService = TweetsService(
      context: context.buildPostStub(
        '/2/users/0000/bookmarks',
        'test/tweets/data/create_bookmark.json',
      ),
    );

    final response = await tweetsService.createBookmark(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyBookmark', () async {
    final tweetsService = TweetsService(
      context: context.buildDeleteStub(
        '/2/users/0000/bookmarks/1111',
        'test/tweets/data/destroy_bookmark.json',
      ),
    );

    final response = await tweetsService.destroyBookmark(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.bookmarks', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2,
        '/2/users/0000/bookmarks',
        'test/tweets/data/bookmarks.json',
        {},
      ),
    );

    final response = await tweetsService.bookmarks(userId: '0000');

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 5);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 5);
  });
}
