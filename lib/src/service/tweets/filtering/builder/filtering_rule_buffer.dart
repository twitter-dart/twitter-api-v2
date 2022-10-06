// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../filtering_rule_param.dart';
import '../operator/logical/and.dart';
import '../operator/logical/logical_operator.dart';
import '../operator/logical/or.dart';
import '../operator/standalone/cashtag.dart';
import '../operator/standalone/hashtag.dart';
import '../operator/standalone/keyword.dart';
import '../operator/standalone/standalone_operator.dart';
import '../operator/standalone/tweet_from.dart';
import '../operator/standalone/tweet_to.dart';
import '../operator/standalone/username.dart';
import 'after_logical_operation.dart';
import 'logical_operation.dart';

class FilteringRuleBuffer {
  /// Returns the new instance of [FilteringRuleBuffer].
  FilteringRuleBuffer(this.tag) {
    _logicalRoute = LogicalOperation(this);
    _afterLogicalRoute = AfterLogicalOperation(this);
  }

  static const _and = And();
  static const _or = Or();

  /// The tag for this rule.
  final String tag;

  /// The operators.
  final _operators = <dynamic>[];

  late LogicalOperation _logicalRoute;
  late AfterLogicalOperation _afterLogicalRoute;

  LogicalOperation appendKeyword(final String value) =>
      _appendStandaloneOperator(Keyword(value));

  LogicalOperation appendNegatedKeyword(final String value) =>
      _appendStandaloneOperator(Keyword.not(value));

  LogicalOperation appendHashtag(final String value) =>
      _appendStandaloneOperator(Hashtag(value));

  LogicalOperation appendNegatedHashtag(final String value) =>
      _appendStandaloneOperator(Hashtag.not(value));

  LogicalOperation appendCashtag(final String value) =>
      _appendStandaloneOperator(Cashtag(value));

  LogicalOperation appendNegatedCashtag(final String value) =>
      _appendStandaloneOperator(Cashtag.not(value));

  LogicalOperation appendUsername(final String username) =>
      _appendStandaloneOperator(Username(username));

  LogicalOperation appendNegatedUsername(final String username) =>
      _appendStandaloneOperator(Username.not(username));

  LogicalOperation appendTweetFrom(final String username) =>
      _appendStandaloneOperator(TweetFrom(username));

  LogicalOperation appendNegatedFrom(final String username) =>
      _appendStandaloneOperator(TweetFrom.not(username));

  LogicalOperation appendTweetTo(final String username) =>
      _appendStandaloneOperator(TweetTo(username));

  LogicalOperation appendNegatedTweetTo(final String username) =>
      _appendStandaloneOperator(TweetTo.not(username));

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

  LogicalOperation _appendStandaloneOperator(
    final StandaloneOperator operator,
  ) {
    _operators.add(operator);
    return _logicalRoute;
  }

  AfterLogicalOperation appendAndOperator() {
    _operators.add(_and);
    return _afterLogicalRoute;
  }

  AfterLogicalOperation appendOrOperator() {
    _operators.add(_or);
    return _afterLogicalRoute;
  }

  LogicalOperation appendGroup(
    final LogicalOperation logicalRoute,
  ) {
    if (_operators.isNotEmpty && _operators.last is! LogicalOperator) {
      appendAndOperator();
    }

    _operators.add(logicalRoute);

    return _logicalRoute;
  }

  FilteringRuleParam build() {
    final buffer = StringBuffer();

    for (final operator in _operators) {
      if (operator is LogicalOperation) {
        buffer.write('(${operator.build().value})');
      } else {
        buffer.write(operator.toString());
      }
    }

    return FilteringRuleParam(
      value: buffer.toString(),
      tag: tag,
    );
  }
}
