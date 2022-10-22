// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../common/range.dart';
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
  LogicalChannel matchKeyword(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createKeyword(value),
      );

  LogicalChannel notMatchKeyword(final String value) =>
      _buffer.appendStandaloneOperator(
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
  LogicalChannel matchHashtag(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createHashtag(value),
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
  LogicalChannel matchCashtag(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createCashtag(value),
      );

  /// Matches any Tweet that mentions the given username, if the username
  /// is a recognized entity.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "@" to indicate a username. However, if you pass a string
  /// prefixed with "@", it will still work.
  LogicalChannel matchUsername(final String username) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createUsername(username),
      );

  /// Matches any Tweet from a specific user.
  ///
  /// The value can be either the username (excluding the @ character) or
  /// the user’s numeric user ID.
  ///
  /// You can only pass a single username/ID.
  LogicalChannel matchTweetFrom(final String username) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createTweetFrom(username),
      );

  /// Matches any Tweet that is in reply to a particular user.
  ///
  /// The value can be either the username
  /// (excluding the @ character) or the user’s numeric user ID.
  ///
  ///You can only pass a single username/ID.
  LogicalChannel matchTweetTo(final String username) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createTweetTo(username),
      );

  LogicalChannel matchFollowersCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createFollowersCount(range),
      );

  LogicalChannel notMatchFollowersCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedFollowersCount(range),
      );

  LogicalChannel matchTweetsCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createTweetsCount(range),
      );

  LogicalChannel notMatchTweetsCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedTweetsCount(range),
      );

  LogicalChannel matchFollowingCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createFollowingCount(range),
      );

  LogicalChannel notMatchFollowingCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedFollowingCount(range),
      );

  LogicalChannel matchListedCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createListedCount(range),
      );

  LogicalChannel notMatchListedCount(final Range range) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedListedCount(range),
      );

  LogicalChannel matchUrlTitle(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createUrlTitle(value),
      );

  LogicalChannel notMatchUrlTitle(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedUrlTitle(value),
      );

  LogicalChannel matchUrlDescription(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createUrlDescription(value),
      );

  LogicalChannel notMatchUrlDescription(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedUrlDescription(value),
      );

  LogicalChannel matchUrlPartially(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createUrlContains(value),
      );

  LogicalChannel notMatchUrlPartially(final String value) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedUrlContains(value),
      );

  LogicalChannel matchRepliesOf(final String tweetId) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createRepliesOf(tweetId),
      );

  LogicalChannel notMatchRepliesOf(final String tweetId) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedRepliesOf(tweetId),
      );

  LogicalChannel matchRetweetOf(final String tweetId) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createRetweetsOf(tweetId),
      );

  LogicalChannel notMatchRetweetOf(final String tweetId) =>
      _buffer.appendStandaloneOperator(
        _standaloneOperation.createNegatedRetweetsOf(tweetId),
      );
}
