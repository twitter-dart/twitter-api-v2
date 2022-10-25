// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';
import 'package:twitter_api_core/twitter_api_core.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/response/twitter_response.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_param.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service_extension.dart';
import '../../../mocks/client_context_stubs.dart' as context;

void main() {
  group('.createThreadTweets', () {
    test('normal case', () async {
      final tweetsService = TweetsService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          'test/src/service/tweets/data/create_tweet.json',
        ),
      );

      final responses = await tweetsService.createThreadTweets(
        tweets: [
          TweetParam(text: 'tweet1'),
          TweetParam(text: 'tweet2'),
          TweetParam(text: 'tweet3'),
        ],
      );

      expect(responses.isNotEmpty, isTrue);
      expect(responses.length, 3);
      expect(responses.first, isA<TwitterResponse<TweetData, void>>());
    });

    test('when the length of tweets is less than 2', () async {
      final tweetsService = TweetsService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/2/tweets',
          'test/src/service/tweets/data/create_tweet.json',
        ),
      );

      expect(
        () async => await tweetsService.createThreadTweets(
          tweets: [TweetParam(text: 'tweet1')],
        ),
        throwsA(
          allOf(
            isA<ArgumentError>(),
            predicate(
              (dynamic e) =>
                  e.message ==
                  'At least 2 tweet datasets are required to '
                      'create a threaded tweet.',
            ),
          ),
        ),
      );
    });
  });
}
