// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/compliance/compliance_service.dart';
import 'package:twitter_api_v2/src/service/lists/lists_service.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/src/twitter_api.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

void main() {
  group('services', () {
    test('.tweetsService', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(twitter.tweetsService, isNotNull);
      expect(twitter.tweetsService, isA<TweetsService>());
    });

    test('.usersService', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(twitter.usersService, isNotNull);
      expect(twitter.usersService, isA<UsersService>());
    });

    test('.spacesService', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(twitter.spacesService, isNotNull);
      expect(twitter.spacesService, isA<SpacesService>());
    });

    test('.listsService', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(twitter.listsService, isNotNull);
      expect(twitter.listsService, isA<ListsService>());
    });

    test('.complianceService', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(twitter.complianceService, isNotNull);
      expect(twitter.complianceService, isA<ComplianceService>());
    });
  });

  //! Since authentication information cannot be shared,
  //! only that the communication is established is verified.
  group('HTTP client in OAuth 2.0', () {
    test('GET', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(
        () async => await twitter.tweetsService.lookupById(tweetId: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('GET Stream', () async {
      final twitter = TwitterApi(bearerToken: '');
      final response = await twitter.tweetsService.connectVolumeStream();

      //! Stream does not raise an exception when retrieving.
      expect(response, isNotNull);
      expect(response, isA<Stream<TwitterResponse<TweetData, void>>>());
    });

    test('POST', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(
        () async => await twitter.tweetsService.createTweet(text: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('DELETE', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(
        () async => await twitter.tweetsService.destroyTweet(tweetId: ''),
        throwsA(isA<FormatException>()),
      );
    });

    test('PUT', () {
      final twitter = TwitterApi(bearerToken: '');

      expect(
        () async => await twitter.listsService.updateListAsPrivate(listId: ''),
        throwsA(isA<FormatException>()),
      );
    });
  });

  //! Since authentication information cannot be shared,
  //! only that the communication is established is verified.
  group('HTTP client in OAuth 1.0a', () {
    test('GET', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.lookupById(tweetId: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('POST', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.createTweet(text: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('DELETE', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.destroyTweet(tweetId: ''),
        throwsA(isA<FormatException>()),
      );
    });

    test('PUT', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.listsService.updateListAsPrivate(listId: ''),
        throwsA(isA<FormatException>()),
      );
    });
  });
}
