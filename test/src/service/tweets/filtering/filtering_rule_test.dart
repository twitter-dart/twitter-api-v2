// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_api_v2/src/service/common/range.dart';
import 'package:twitter_api_v2/src/service/tweets/filtering/channel/logical_channel.dart';
import 'package:twitter_api_v2/src/service/tweets/filtering/filtering_rule.dart';

void main() {
  group('standalone syntaxes', () {
    test('.matchKeyword', () {
      final actual = FilteringRule.of().matchKeyword('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'test');
    });

    test('.notMatchKeyword', () {
      final actual = FilteringRule.of().notMatchKeyword('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-test');
    });

    test('.matchHashtag', () {
      final actual = FilteringRule.of().matchHashtag('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '#test');
    });

    test('.notMatchHashtag', () {
      final actual = FilteringRule.of().notMatchHashtag('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-#test');
    });

    test('.matchCashtag', () {
      final actual = FilteringRule.of().matchCashtag('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '\$test');
    });

    test('.notMatchCashtag', () {
      final actual = FilteringRule.of().notMatchCashtag('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-\$test');
    });

    test('.matchUsername', () {
      final actual = FilteringRule.of().matchUsername('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '@test');
    });

    test('.notMatchUsername', () {
      final actual = FilteringRule.of().notMatchUsername('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-@test');
    });

    test('.matchTweetFrom', () {
      final actual = FilteringRule.of().matchTweetFrom('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'from:test');
    });

    test('.notMatchTweetFrom', () {
      final actual = FilteringRule.of().notMatchTweetFrom('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-from:test');
    });

    test('.matchTweetTo', () {
      final actual = FilteringRule.of().matchTweetTo('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'to:test');
    });

    test('.notMatchTweetTo', () {
      final actual = FilteringRule.of().notMatchTweetTo('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-to:test');
    });

    test('.matchUrl', () {
      final actual = FilteringRule.of().matchUrl('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'url:"test"');
    });

    test('.notMatchUrl', () {
      final actual = FilteringRule.of().notMatchUrl('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-url:"test"');
    });

    test('.matchRetweetedBy', () {
      final actual = FilteringRule.of().matchRetweetedBy('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'retweets_of:test');
    });

    test('.notMatchRetweetedBy', () {
      final actual = FilteringRule.of().notMatchRetweetedBy('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-retweets_of:test');
    });

    test('.matchConversation', () {
      final actual = FilteringRule.of().matchConversation('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'conversation_id:1234');
    });

    test('.notMatchConversation', () {
      final actual = FilteringRule.of().notMatchConversation('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-conversation_id:1234');
    });

    test('.matchUserBio', () {
      final actual = FilteringRule.of().matchUserBio('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'bio:test');
    });

    test('.notMatchUserBio', () {
      final actual = FilteringRule.of().notMatchUserBio('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-bio:test');
    });

    test('.matchUserBioName', () {
      final actual = FilteringRule.of().matchUserBioName('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'bio_name:test');
    });

    test('.notMatchUserBioName', () {
      final actual = FilteringRule.of().notMatchUserBioName('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-bio_name:test');
    });

    test('.matchUserBioLocation', () {
      final actual = FilteringRule.of().matchUserBioLocation('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'bio_location:test');
    });

    test('.notMatchUserBioLocation', () {
      final actual = FilteringRule.of().notMatchUserBioLocation('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-bio_location:test');
    });

    test('.matchPlace', () {
      final actual = FilteringRule.of().matchPlace('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'place:test');
    });

    test('.notMatchPlace', () {
      final actual = FilteringRule.of().notMatchPlace('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-place:test');
    });

    test('.matchPointRadiusInMiles', () {
      final actual = FilteringRule.of().matchPointRadiusInMiles(
        longitude: 10.0,
        latitude: 10.0,
        radius: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'point_radius:[10.0 10.0 10.0mi]');
    });

    test('.notMatchPointRadiusInMiles', () {
      final actual = FilteringRule.of().notMatchPointRadiusInMiles(
        longitude: 10.0,
        latitude: 10.0,
        radius: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-point_radius:[10.0 10.0 10.0mi]');
    });

    test('.matchPointRadiusInKilometers', () {
      final actual = FilteringRule.of().matchPointRadiusInKilometers(
        longitude: 10.0,
        latitude: 10.0,
        radius: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'point_radius:[10.0 10.0 10.0km]');
    });

    test('.notMatchPointRadiusInKilometers', () {
      final actual = FilteringRule.of().notMatchPointRadiusInKilometers(
        longitude: 10.0,
        latitude: 10.0,
        radius: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-point_radius:[10.0 10.0 10.0km]');
    });

    test('.matchBoundingBox', () {
      final actual = FilteringRule.of().matchBoundingBox(
        westLongitude: 10.0,
        southLatitude: 10.0,
        eastLongitude: 10.0,
        northLatitude: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'bounding_box:[10.0 10.0 10.0 10.0]');
    });

    test('.notMatchBoundingBox', () {
      final actual = FilteringRule.of().notMatchBoundingBox(
        westLongitude: 10.0,
        southLatitude: 10.0,
        eastLongitude: 10.0,
        northLatitude: 10.0,
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-bounding_box:[10.0 10.0 10.0 10.0]');
    });

    test('.matchFollowersCount', () {
      final actual = FilteringRule.of().matchFollowersCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'followers_count:10');
    });

    test('.notMatchFollowersCount', () {
      final actual = FilteringRule.of().notMatchFollowersCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-followers_count:10');
    });

    test('.matchTweetsCount', () {
      final actual = FilteringRule.of().matchTweetsCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'tweets_count:10');
    });

    test('.notMatchTweetsCount', () {
      final actual = FilteringRule.of().notMatchTweetsCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-tweets_count:10');
    });

    test('.matchFollowingCount', () {
      final actual = FilteringRule.of().matchFollowingCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'following_count:10');
    });

    test('.notMatchFollowingCount', () {
      final actual = FilteringRule.of().notMatchFollowingCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-following_count:10');
    });

    test('.matchListedCount', () {
      final actual = FilteringRule.of().matchListedCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'listed_count:10');
    });

    test('.notMatchListedCount', () {
      final actual = FilteringRule.of().notMatchListedCount(
        Range.point(10),
      );

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-listed_count:10');
    });

    test('.matchUrlTitle', () {
      final actual = FilteringRule.of().matchUrlTitle('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'url_title:test');
    });

    test('.notMatchUrlTitle', () {
      final actual = FilteringRule.of().notMatchUrlTitle('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-url_title:test');
    });

    test('.matchUrlDescription', () {
      final actual = FilteringRule.of().matchUrlDescription('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'url_description:test');
    });

    test('.notMatchUrlDescription', () {
      final actual = FilteringRule.of().notMatchUrlDescription('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-url_description:test');
    });

    test('.matchUrlPartially', () {
      final actual = FilteringRule.of().matchUrlPartially('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'url_contains:test');
    });

    test('.notMatchUrlPartially', () {
      final actual = FilteringRule.of().notMatchUrlPartially('test');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-url_contains:test');
    });

    test('.matchRepliesOf', () {
      final actual = FilteringRule.of().matchRepliesOf('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'in_reply_to_tweet_id:1234');
    });

    test('.notMatchRepliesOf', () {
      final actual = FilteringRule.of().notMatchRepliesOf('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-in_reply_to_tweet_id:1234');
    });

    test('.matchRetweetOf', () {
      final actual = FilteringRule.of().matchRetweetOf('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), 'retweets_of_tweet_id:1234');
    });

    test('.notMatchRetweetOf', () {
      final actual = FilteringRule.of().notMatchRetweetOf('1234');

      expect(actual, isA<LogicalChannel>());
      expect(actual.build(), '-retweets_of_tweet_id:1234');
    });
  });
}
