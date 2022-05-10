// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import '../../../mocks/client_context_stubs.dart' as context;

void main() {
  group('.createTweet', () {
    test('normal case', () async {
      final tweetsService = TweetsService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          'test/src/service/tweets/data/create_tweet.json',
        ),
      );

      final response = await tweetsService.createTweet(text: 'Hello, World!');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<TweetData>());
      expect(response.data.id, '1445880548472328192');
      expect(response.data.text, 'Hello, World!');
    });

    test('throws TwitterException', () async {
      final tweetsService = TweetsService(
        context: ClientContext(bearerToken: ''),
      );

      expect(
        () async =>
            await tweetsService.createTweet(text: 'Throw TwitterException'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('throws TwitterException due to no data', () async {
      final tweetsService = TweetsService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          'test/src/service/tweets/data/no_data.json',
        ),
      );

      expect(
        () async =>
            await tweetsService.createTweet(text: 'Throw TwitterException'),
        throwsA(
          allOf(isA<TwitterException>(),
              predicate((e) => e.toString().isNotEmpty)),
        ),
      );
    });

    test('with OAuth1.0a', () async {
      final clientContext = context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/tweets',
        'test/src/service/tweets/data/create_tweet.json',
      );

      when(clientContext.hasOAuth1Client).thenReturn(true);

      final tweetsService = TweetsService(context: clientContext);
      final response = await tweetsService.createTweet(text: 'Hello, World!');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<TweetData>());
      expect(response.data.id, '1445880548472328192');
      expect(response.data.text, 'Hello, World!');
    });
  });

  group('.destroyTweet', () {
    test('normal case', () async {
      final tweetsService = TweetsService(
        context: context.buildDeleteStub(
          '/2/tweets/1111',
          'test/src/service/tweets/data/destroy_tweet.json',
        ),
      );

      final response = await tweetsService.destroyTweet(tweetId: '1111');

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with OAuth1.0a', () async {
      final clientContext = context.buildDeleteStub(
        '/2/tweets/1111',
        'test/src/service/tweets/data/destroy_tweet.json',
      );

      when(clientContext.hasOAuth1Client).thenReturn(true);

      final tweetsService = TweetsService(context: clientContext);
      final response = await tweetsService.destroyTweet(tweetId: '1111');

      expect(response, isA<bool>());
      expect(response, isTrue);
    });
  });

  test('.createLike', () async {
    final tweetsService = TweetsService(
      context: context.buildPostStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/likes',
        'test/src/service/tweets/data/create_like.json',
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
        'test/src/service/tweets/data/destroy_like.json',
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
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/retweets',
        'test/src/service/tweets/data/create_retweet.json',
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
        'test/src/service/tweets/data/destroy_retweet.json',
      ),
    );

    final response = await tweetsService.destroyRetweet(
      userId: '0000',
      tweetId: '1111',
    );

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupLikingUsers', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/tweets/1111/liking_users',
        'test/src/service/tweets/data/lookup_liking_users.json',
        {},
      ),
    );

    final response = await tweetsService.lookupLikingUsers(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<UserData>>());
    expect(response.meta, isA<UserMeta>());
    expect(response.data.length, 5);
    expect(response.meta, isNotNull);
    expect(response.meta!.resultCount, 5);
  });

  test('.lookupLikedTweets', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/liked_tweets',
        'test/src/service/tweets/data/lookup_liked_tweets.json',
        {},
      ),
    );

    final response = await tweetsService.lookupLikedTweets(
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
        UserContext.oauth2OrOAuth1,
        '/2/tweets/1111/retweeted_by',
        'test/src/service/tweets/data/retweeted_by.json',
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
        UserContext.oauth2OrOAuth1,
        '/2/tweets/1111/quote_tweets',
        'test/src/service/tweets/data/quote_tweets.json',
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
        UserContext.oauth2OrOAuth1,
        '/2/tweets/search/recent',
        'test/src/service/tweets/data/search_recent.json',
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
        UserContext.oauth2Only,
        '/2/tweets/search/all',
        'test/src/service/tweets/data/search_all.json',
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

  test('.lookupById', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/tweets/1111',
        'test/src/service/tweets/data/lookup_by_id.json',
        {},
      ),
    );

    final response = await tweetsService.lookupById(
      tweetId: '1111',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<TweetData>());
    expect(response.data.id, '1067094924124872705');
  });

  test('.lookupByIds', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/tweets',
        'test/src/service/tweets/data/lookup_by_ids.json',
        {'ids': '1261326399320715264,1278347468690915330'},
      ),
    );

    final response = await tweetsService.lookupByIds(
      tweetIds: ['1261326399320715264', '1278347468690915330'],
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.data.length, 2);
  });

  test('.countRecent', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2Only,
        '/2/tweets/counts/recent',
        'test/src/service/tweets/data/counts_recent.json',
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
        UserContext.oauth2Only,
        '/2/tweets/counts/all',
        'test/src/service/tweets/data/counts_all.json',
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
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/bookmarks',
        'test/src/service/tweets/data/create_bookmark.json',
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
        'test/src/service/tweets/data/destroy_bookmark.json',
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
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/bookmarks',
        'test/src/service/tweets/data/bookmarks.json',
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

  test('.createHiddenReply', () async {
    final tweetsService = TweetsService(
      context: context.buildPutStub(
        '/2/tweets/0000/hidden',
        'test/src/service/tweets/data/create_hidden_reply.json',
      ),
    );

    final response = await tweetsService.createHiddenReply(tweetId: '0000');

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.destroyHiddenReply', () async {
    final tweetsService = TweetsService(
      context: context.buildPutStub(
        '/2/tweets/0000/hidden',
        'test/src/service/tweets/data/destroy_hidden_reply.json',
      ),
    );

    final response = await tweetsService.destroyHiddenReply(tweetId: '0000');

    expect(response, isA<bool>());
    expect(response, isTrue);
  });

  test('.lookupMentions', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/mentions',
        'test/src/service/tweets/data/lookup_mentions.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await tweetsService.lookupMentions(
      userId: '0000',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 5);
    expect(response.meta!.resultCount, 5);
  });

  test('.lookupTweets', () async {
    final tweetsService = TweetsService(
      context: context.buildGetStub(
        UserContext.oauth2OrOAuth1,
        '/2/users/0000/tweets',
        'test/src/service/tweets/data/lookup_tweets.json',
        {
          'max_results': '10',
          'pagination_token': 'TOKEN',
        },
      ),
    );

    final response = await tweetsService.lookupTweets(
      userId: '0000',
      maxResults: 10,
      paginationToken: 'TOKEN',
    );

    expect(response, isA<TwitterResponse>());
    expect(response.data, isA<List<TweetData>>());
    expect(response.meta, isA<TweetMeta>());
    expect(response.data.length, 10);
    expect(response.meta!.resultCount, 10);
  });
}
