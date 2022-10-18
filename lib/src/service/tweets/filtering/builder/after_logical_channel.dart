// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'conclusion.dart';
import 'filtering_rule_buffer.dart';
import 'filtering_rule_syntax.dart';
import 'logical_channel.dart';

class AfterLogicalChannel implements FilteringRuleSyntax {
  /// Returns the new instance of [AfterLogicalChannel].
  const AfterLogicalChannel(this._buffer);

  /// The tray for filtering operators.
  final FilteringRuleBuffer _buffer;

  /// Matches a keyword within the body of a Tweet.
  ///
  /// This is a tokenized match, meaning that your keyword string will be
  /// matched against the tokenized text of the Tweet body. Tokenization splits
  /// words based on punctuation, symbols, and Unicode basic plane separator
  /// characters.
  LogicalChannel matchKeyword(final String value) =>
      _buffer.appendKeyword(value);

  /// Matches any Tweet containing a recognized hashtag, if the hashtag is a
  /// recognized entity in a Tweet.
  ///
  /// This operator performs an exact match, NOT a tokenized match, meaning
  /// the rule #CocaCola will match posts with the exact hashtag #CocaCola,
  /// but not those with the hashtag #CocaCola.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "#" to indicate a hashtag. However, if you pass a string
  /// prefixed with "#", it will still work.
  LogicalChannel matchHashtag(final String value) =>
      _buffer.appendHashtag(value);

  /// Matches any Tweet that contains the specified ‘cashtag’
  /// (where the leading character of the token is the ‘$’ character).
  ///
  /// Note that the cashtag operator relies on Twitter’s ‘symbols’ entity
  /// extraction to match cashtags, rather than trying to extract the cashtag
  /// from the body itself.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "$" to indicate a cashtag. However, if you pass a string
  /// prefixed with "$", it will still work.
  LogicalChannel matchCashtag(final String value) =>
      _buffer.appendCashtag(value);

  /// Matches any Tweet that mentions the given username, if the username
  /// is a recognized entity.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "@" to indicate a username. However, if you pass a string
  /// prefixed with "@", it will still work.
  LogicalChannel matchUsername(final String username) =>
      _buffer.appendUsername(username);

  /// Matches any Tweet from a specific user.
  ///
  /// The value can be either the username (excluding the @ character) or
  /// the user’s numeric user ID.
  ///
  /// You can only pass a single username/ID.
  LogicalChannel matchTweetFrom(final String username) =>
      _buffer.appendTweetFrom(username);

  /// Matches any Tweet that is in reply to a particular user.
  ///
  /// The value can be either the username
  /// (excluding the @ character) or the user’s numeric user ID.
  ///
  ///You can only pass a single username/ID.
  LogicalChannel matchTweetTo(final String username) =>
      _buffer.appendTweetTo(username);

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

  // FilteringRuleBuilder beginGroup() =>
  //     _appendToken(_FilteringRuleOperator.groupBegin);

  // FilteringRuleBuilder endGroup() =>
  //     _appendToken(_FilteringRuleOperator.groupEnd);

  // FilteringRuleBuilder _sample(final int percent) =>
  //     _appendToken('$percent', prefix: 'sample:');

  LogicalChannel group(final Conclusion conclusion) =>
      _buffer.appendGroup(conclusion);

  /// Add negated grouped rules.
  LogicalChannel negatedGroup(final Conclusion conclusion) =>
      _buffer.appendNegatedGroup(conclusion);
}
