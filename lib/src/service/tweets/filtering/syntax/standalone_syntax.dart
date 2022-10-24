// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../../../common/range.dart';
import '../../distance_unit.dart';
import '../channel/logical_channel.dart';
import '../filtering_rule_group.dart';
import '../operation/standalone_operation.dart';
import 'group_syntax.dart';

abstract class StandaloneSyntax extends GroupSyntax {
  /// Returns the new instance of [StandaloneSyntax].
  const StandaloneSyntax(super.buffer) : _buffer = buffer;

  /// The standalone operation
  static const _standaloneOperation = StandaloneOperation();

  /// The buffer
  final FilteringRuleGroup _buffer;

  /// Matches a keyword within the body of a Tweet.
  ///
  /// This is a tokenized match, meaning that your keyword string will be
  /// matched against the tokenized text of the Tweet body. Tokenization splits
  /// words based on punctuation, symbols, and Unicode basic plane separator
  /// characters.
  LogicalChannel matchKeyword(final String value) => _buffer.appendOperator(
        _standaloneOperation.createKeyword(value),
      );

  LogicalChannel notMatchKeyword(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedKeyword(value),
      );

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
  LogicalChannel matchHashtag(final String value) => _buffer.appendOperator(
        _standaloneOperation.createHashtag(value),
      );

  LogicalChannel notMatchHashtag(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedHashtag(value),
      );

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
  LogicalChannel matchCashtag(final String value) => _buffer.appendOperator(
        _standaloneOperation.createCashtag(value),
      );

  LogicalChannel notMatchCashtag(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedCashtag(value),
      );

  /// Matches any Tweet that mentions the given username, if the username
  /// is a recognized entity.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "@" to indicate a username. However, if you pass a string
  /// prefixed with "@", it will still work.
  LogicalChannel matchUsername(final String username) => _buffer.appendOperator(
        _standaloneOperation.createUsername(username),
      );

  LogicalChannel notMatchUsername(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedUsername(username),
      );

  /// Matches any Tweet from a specific user.
  ///
  /// The value can be either the username (excluding the @ character) or
  /// the user’s numeric user ID.
  ///
  /// You can only pass a single username/ID.
  LogicalChannel matchTweetFrom(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createTweetFrom(username),
      );

  LogicalChannel notMatchTweetFrom(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedTweetFrom(username),
      );

  /// Matches any Tweet that is in reply to a particular user.
  ///
  /// The value can be either the username
  /// (excluding the @ character) or the user’s numeric user ID.
  ///
  ///You can only pass a single username/ID.
  LogicalChannel matchTweetTo(final String username) => _buffer.appendOperator(
        _standaloneOperation.createTweetTo(username),
      );

  LogicalChannel notMatchTweetTo(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedTweetTo(username),
      );

  LogicalChannel matchUrl(final String value) => _buffer.appendOperator(
        _standaloneOperation.createUrl(value),
      );

  LogicalChannel notMatchUrl(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedUrl(value),
      );

  LogicalChannel matchRetweetedBy(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createRetweetedBy(username),
      );

  LogicalChannel notMatchRetweetedBy(final String username) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedRetweetedBy(username),
      );

  LogicalChannel matchConversation(final String tweetId) =>
      _buffer.appendOperator(
        _standaloneOperation.createConversation(tweetId),
      );

  LogicalChannel notMatchConversation(final String tweetId) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedConversation(tweetId),
      );

  LogicalChannel matchUserBio(final String value) => _buffer.appendOperator(
        _standaloneOperation.createUserBio(value),
      );

  LogicalChannel notMatchUserBio(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedUserBio(value),
      );

  LogicalChannel matchUserBioName(final String value) => _buffer.appendOperator(
        _standaloneOperation.createUserBioName(value),
      );

  LogicalChannel notMatchUserBioName(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedUserBioName(value),
      );

  LogicalChannel matchUserBioLocation(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createUserBioLocation(value),
      );

  LogicalChannel notMatchUserBioLocation(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedUserBioLocation(value),
      );

  LogicalChannel matchPlace(final String value) => _buffer.appendOperator(
        _standaloneOperation.createPlace(value),
      );

  LogicalChannel notMatchPlace(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedPlace(value),
      );

  LogicalChannel matchCountry(final core.ISOAlpha2Country country) =>
      _buffer.appendOperator(
        _standaloneOperation.createCountry(country),
      );

  LogicalChannel notMatchCountry(core.ISOAlpha2Country country) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedCountry(country),
      );

  LogicalChannel matchPointRadiusInMiles({
    required double longitude,
    required double latitude,
    required double radius,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createPointRadius(
          DistanceUnit.miles,
          longitude,
          latitude,
          radius,
        ),
      );

  LogicalChannel notMatchPointRadiusInMiles({
    required double longitude,
    required double latitude,
    required double radius,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedPointRadius(
          DistanceUnit.miles,
          longitude,
          latitude,
          radius,
        ),
      );

  LogicalChannel matchPointRadiusInKilometers({
    required double longitude,
    required double latitude,
    required double radius,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createPointRadius(
          DistanceUnit.kilometers,
          longitude,
          latitude,
          radius,
        ),
      );

  LogicalChannel notMatchPointRadiusInKilometers({
    required double longitude,
    required double latitude,
    required double radius,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedPointRadius(
          DistanceUnit.kilometers,
          longitude,
          latitude,
          radius,
        ),
      );

  LogicalChannel matchBoundingBox({
    required double westLongitude,
    required double southLatitude,
    required double eastLongitude,
    required double northLatitude,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createBoundingBox(
          westLongitude,
          southLatitude,
          eastLongitude,
          northLatitude,
        ),
      );

  LogicalChannel notMatchBoundingBox({
    required double westLongitude,
    required double southLatitude,
    required double eastLongitude,
    required double northLatitude,
  }) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedBoundingBox(
          westLongitude,
          southLatitude,
          eastLongitude,
          northLatitude,
        ),
      );

  LogicalChannel matchFollowersCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createFollowersCount(range),
      );

  LogicalChannel notMatchFollowersCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedFollowersCount(range),
      );

  LogicalChannel matchTweetsCount(final Range range) => _buffer.appendOperator(
        _standaloneOperation.createTweetsCount(range),
      );

  LogicalChannel notMatchTweetsCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedTweetsCount(range),
      );

  LogicalChannel matchFollowingCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createFollowingCount(range),
      );

  LogicalChannel notMatchFollowingCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedFollowingCount(range),
      );

  LogicalChannel matchListedCount(final Range range) => _buffer.appendOperator(
        _standaloneOperation.createListedCount(range),
      );

  LogicalChannel notMatchListedCount(final Range range) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedListedCount(range),
      );

  LogicalChannel matchUrlTitle(final String value) => _buffer.appendOperator(
        _standaloneOperation.createUrlTitle(value),
      );

  LogicalChannel notMatchUrlTitle(final String value) => _buffer.appendOperator(
        _standaloneOperation.createNegatedUrlTitle(value),
      );

  LogicalChannel matchUrlDescription(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createUrlDescription(value),
      );

  LogicalChannel notMatchUrlDescription(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedUrlDescription(value),
      );

  LogicalChannel matchUrlPartially(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createUrlContains(value),
      );

  LogicalChannel notMatchUrlPartially(final String value) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedUrlContains(value),
      );

  LogicalChannel matchRepliesOf(final String tweetId) => _buffer.appendOperator(
        _standaloneOperation.createRepliesOf(tweetId),
      );

  LogicalChannel notMatchRepliesOf(final String tweetId) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedRepliesOf(tweetId),
      );

  LogicalChannel matchRetweetOf(final String tweetId) => _buffer.appendOperator(
        _standaloneOperation.createRetweetsOf(tweetId),
      );

  LogicalChannel notMatchRetweetOf(final String tweetId) =>
      _buffer.appendOperator(
        _standaloneOperation.createNegatedRetweetsOf(tweetId),
      );
}
