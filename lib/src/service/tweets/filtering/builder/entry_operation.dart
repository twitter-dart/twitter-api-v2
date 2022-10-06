// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'filtering_rule_buffer.dart';
import 'logical_operation.dart';

class EntryOperation {
  /// Returns the new instance of [EntryOperation].
  EntryOperation(final String tag) : _buffer = FilteringRuleBuffer(tag);

  /// The tray for filtering operators.
  final FilteringRuleBuffer _buffer;

  /// Matches a keyword within the body of a Tweet.
  ///
  /// This is a tokenized match, meaning that your keyword string will be
  /// matched against the tokenized text of the Tweet body. Tokenization splits
  /// words based on punctuation, symbols, and Unicode basic plane separator
  /// characters.
  LogicalOperation matchKeyword(final String value) =>
      _buffer.appendKeyword(value);

  LogicalOperation notMatchKeyword(final String value) =>
      _buffer.appendNegatedKeyword(value);

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
  LogicalOperation matchHashtag(final String value) =>
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
  LogicalOperation matchCashtag(final String value) =>
      _buffer.appendCashtag(value);

  /// Matches any Tweet that mentions the given username, if the username
  /// is a recognized entity.
  ///
  /// The string passed to this method does not need to be prefixed with
  /// the symbol "@" to indicate a username. However, if you pass a string
  /// prefixed with "@", it will still work.
  LogicalOperation matchUsername(final String username) =>
      _buffer.appendUsername(username);

  /// Matches any Tweet from a specific user.
  ///
  /// The value can be either the username (excluding the @ character) or
  /// the user’s numeric user ID.
  ///
  /// You can only pass a single username/ID.
  LogicalOperation matchTweetFrom(final String username) =>
      _buffer.appendTweetFrom(username);

  /// Matches any Tweet that is in reply to a particular user.
  ///
  /// The value can be either the username
  /// (excluding the @ character) or the user’s numeric user ID.
  ///
  ///You can only pass a single username/ID.
  LogicalOperation matchTweetTo(final String username) =>
      _buffer.appendTweetTo(username);

  /// Add grouped rules.
  LogicalOperation group(final LogicalOperation logicalRoute) =>
      _buffer.appendGroup(logicalRoute);
}
