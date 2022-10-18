// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../operation/logical_operation.dart';
import '../operation/standalone_operation.dart';
import '../operator/conjunction/conjunction_required_operator.dart';
import '../operator/filtering_rule_operator.dart';
import '../operator/standalone/standalone_operator.dart';
import 'after_logical_channel.dart';
import 'conclusion.dart';
import 'logical_channel.dart';

class FilteringRuleBuffer {
  /// Returns the new instance of [FilteringRuleBuffer].
  FilteringRuleBuffer() {
    _logicalChannel = LogicalChannel(this);
    _afterLogicalChannel = AfterLogicalChannel(this);
  }

  static const _logicalOperation = LogicalOperation();
  static const _standaloneOperation = StandaloneOperation();

  /// The operators.
  final _operators = <FilteringRuleOperator>[];

  late LogicalChannel _logicalChannel;
  late AfterLogicalChannel _afterLogicalChannel;

  LogicalChannel appendKeyword(final String value) => _appendStandaloneOperator(
        _standaloneOperation.createKeyword(value),
      );

  LogicalChannel appendNegatedKeyword(final String value) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedKeyword(value),
      );

  LogicalChannel appendHashtag(final String value) => _appendStandaloneOperator(
        _standaloneOperation.createHashtag(value),
      );

  LogicalChannel appendNegatedHashtag(final String value) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedHashtag(value),
      );

  LogicalChannel appendCashtag(final String value) => _appendStandaloneOperator(
        _standaloneOperation.createCashtag(value),
      );

  LogicalChannel appendNegatedCashtag(final String value) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedCashtag(value),
      );

  LogicalChannel appendUsername(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createUsername(username),
      );

  LogicalChannel appendNegatedUsername(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedUsername(username),
      );

  LogicalChannel appendTweetFrom(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createTweetFrom(username),
      );

  LogicalChannel appendNegatedFrom(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedTweetFrom(username),
      );

  LogicalChannel appendTweetTo(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createTweetTo(username),
      );

  LogicalChannel appendNegatedTweetTo(final String username) =>
      _appendStandaloneOperator(
        _standaloneOperation.createNegatedTweetTo(username),
      );

  // FilteringRuleBuilder matchUrl(final String url) =>
  //     _appendToken(url, prefix: 'url:');

  // FilteringRuleBuilder matchRetweetedBy(final String username) =>
  //     _appendToken(username, prefix: 'retweets_of:');

  // FilteringRuleBuilder matchConversation(final String conversationId) =>
  //     _appendToken(conversationId, prefix: 'conversation_id:');

  // FilteringRuleBuilder matchBio(final String bio) =>
  //     _appendToken(bio, prefix: 'bio:');

  // FilteringRuleBuilder matchBioName(final String name) =>
  //     _appendToken(name, prefix: 'bio_name:');

  // FilteringRuleBuilder matchBioLocation(final String location) =>
  //     _appendToken(location, prefix: 'bio_location:');

  // FilteringRuleBuilder matchPlace(final String place) =>
  //     _appendToken(place, prefix: 'place:');

  // FilteringRuleBuilder matchPlaceCountry(final String placeCountry) =>
  //     _appendToken(placeCountry, prefix: 'place_country:');

  // FilteringRuleBuilder matchPointRadius({
  //   required double longitude,
  //   required double latitude,
  //   required double radius,
  //   DistanceUnit distanceUnit = DistanceUnit.miles,
  // }) =>
  //     _appendToken('[$longitude $latitude $radius${distanceUnit.value}]',
  //         prefix: 'point_radius:');

  // FilteringRuleBuilder matchBoundingBox({
  //   required double westLongitude,
  //   required double southLatitude,
  //   required double eastLongitude,
  //   required double northLatitude,
  // }) =>
  //     _appendToken(
  //       '[$westLongitude $southLatitude $eastLongitude $northLatitude]',
  //       prefix: 'point_radius:',
  //     );

  // FilteringRuleBuilder matchRetweet() => _appendToken('retweet', prefix: 'is:');

  // FilteringRuleBuilder matchReply() => _appendToken('reply', prefix: 'is:');

  // FilteringRuleBuilder matchQuote() => _appendToken('quote', prefix: 'is:');

  // FilteringRuleBuilder matchVerified() =>
  //     _appendToken('verified', prefix: 'is:');

  // FilteringRuleBuilder matchNonNullcastedTweet() =>
  //     _appendToken('nullcast', prefix: '-is:');

  // FilteringRuleBuilder matchTweetWithHashtag() =>
  //     _appendToken('hashtags', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithCashtag() =>
  //     _appendToken('cashtags', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithLink() =>
  //     _appendToken('links', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithMention() =>
  //     _appendToken('mentions', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithMedia() =>
  //     _appendToken('media', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithImage() =>
  //     _appendToken('images', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithVideoLink() =>
  //     _appendToken('video_link', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithGeo() =>
  //     _appendToken('geo', prefix: 'has:');

  // FilteringRuleBuilder matchTweetWithLanguage(final TweetLanguage language) =>
  //     _appendToken(language.code, prefix: 'lang:');

  // FilteringRuleBuilder matchFollowersCount(final int count) =>
  //     _appendToken('$count', prefix: 'followers_count:');

  // FilteringRuleBuilder matchFollowersCountBetween({
  //   required int inclusive,
  //   required int exclusive,
  // }) =>
  //     _appendToken('$inclusive..$exclusive', prefix: 'followers_count:');

  // FilteringRuleBuilder matchTweetsCount(final int count) =>
  //     _appendToken('$count', prefix: 'tweets_count:');

  // FilteringRuleBuilder matchTweetsCountBetween({
  //   required int inclusive,
  //   required int exclusive,
  // }) =>
  //     _appendToken('$inclusive..$exclusive', prefix: 'tweets_count:');

  // FilteringRuleBuilder matchFollowingCount(final int count) =>
  //     _appendToken('$count', prefix: 'following_count:');

  // FilteringRuleBuilder matchFollowingCountBetween({
  //   required int inclusive,
  //   required int exclusive,
  // }) =>
  //     _appendToken('$inclusive..$exclusive', prefix: 'following_count:');

  // FilteringRuleBuilder matchListedCount(final int count) =>
  //     _appendToken('$count', prefix: 'listed_count:');

  // FilteringRuleBuilder matchListedCountBetween({
  //   required int inclusive,
  //   required int exclusive,
  // }) =>
  //     _appendToken('$inclusive..$exclusive', prefix: 'listed_count:');

  // FilteringRuleBuilder matchUrlTitle(final String title) =>
  //     _appendToken(title, prefix: 'url_title:');

  // FilteringRuleBuilder matchUrlDescription(final String description) =>
  //     _appendToken(description, prefix: 'url_description:');

  // FilteringRuleBuilder matchUrlContains(final String literal) =>
  //     _appendToken(literal, prefix: 'url_contains:');

  // FilteringRuleBuilder matchTweetSource(final String source) =>
  //     _appendToken(source, prefix: 'source:');

  // FilteringRuleBuilder matchRepliedTweetFor(final String tweetId) =>
  //     _appendToken(tweetId, prefix: 'in_reply_to_tweet_id:');

  // FilteringRuleBuilder matchRetweetOf(final String tweetId) =>
  //     _appendToken(tweetId, prefix: 'retweets_of_tweet_id:');

  LogicalChannel _appendStandaloneOperator(
    final StandaloneOperator operator,
  ) {
    _operators.add(operator);

    return _logicalChannel;
  }

  LogicalChannel _appendConjunctionRequiredOperator(
    final ConjunctionRequiredOperator operator,
  ) {
    _operators.add(operator);

    return _logicalChannel;
  }

  AfterLogicalChannel appendAndOperator() {
    _operators.add(
      _logicalOperation.createAnd(),
    );

    return _afterLogicalChannel;
  }

  AfterLogicalChannel appendOrOperator() {
    _operators.add(
      _logicalOperation.createOr(),
    );

    return _afterLogicalChannel;
  }

  LogicalChannel appendGroup(
    final Conclusion conclusion,
  ) {
    _operators.add(
      _logicalOperation.createGroup(conclusion),
    );

    return _logicalChannel;
  }

  LogicalChannel appendNegatedGroup(
    final Conclusion conclusion,
  ) {
    _operators.add(
      _logicalOperation.createNegatedGroup(conclusion),
    );

    return _logicalChannel;
  }

  String build() {
    final buffer = StringBuffer();

    for (final operator in _operators) {
      buffer.write(operator.toString());
    }

    return buffer.toString();
  }
}
