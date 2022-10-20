// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../common/range.dart';
import '../../tweet_language.dart';
import '../channel/logical_channel.dart';
import '../filtering_rule_group.dart';
import '../operation/conjunction_required_operation.dart';
import 'standalone_syntax.dart';

abstract class ConjunctionRequiredSyntax extends StandaloneSyntax {
  /// Returns the new instance of [ConjunctionRequiredSyntax].
  const ConjunctionRequiredSyntax(super.buffer) : _buffer = buffer;

  /// The conjunction required operation
  static const _conjunctionRequiredOperation = ConjunctionRequiredOperation();

  /// The buffer
  final FilteringRuleGroup _buffer;

  LogicalChannel matchRetweet() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createIsRetweet(),
      );

  LogicalChannel notMatchRetweet() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedIsRetweet(),
      );

  LogicalChannel matchReply() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createIsReply(),
      );

  LogicalChannel notMatchReply() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedIsReply(),
      );

  LogicalChannel matchQuote() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createIsQuote(),
      );

  LogicalChannel notMatchQuote() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedIsQuote(),
      );

  LogicalChannel matchVerifiedAuthor() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createIsVerified(),
      );

  LogicalChannel notMatchVerifiedAuthor() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedIsVerified(),
      );

  LogicalChannel notMatchNullcast() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedIsNullCast(),
      );

  LogicalChannel matchWithHashtags() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasHashtags(),
      );

  LogicalChannel notMatchWithHashtags() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasHashtags(),
      );

  LogicalChannel matchWithCashtags() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasCashtags(),
      );

  LogicalChannel notMatchWithCashtags() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasCashtags(),
      );

  LogicalChannel matchWithLinks() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasLinks(),
      );

  LogicalChannel notMatchWithLinks() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasLinks(),
      );

  LogicalChannel matchWithMentions() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasMentions(),
      );

  LogicalChannel notMatchWithMentions() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasMentions(),
      );

  LogicalChannel matchWithMedia() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasMedia(),
      );

  LogicalChannel notMatchWithMedia() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasMedia(),
      );

  LogicalChannel matchWithImages() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasImages(),
      );

  LogicalChannel notMatchWithImages() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasImages(),
      );

  LogicalChannel matchWithVideoLinks() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasVideoLinks(),
      );

  LogicalChannel notMatchWithVideoLinks() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasVideoLinks(),
      );

  LogicalChannel matchWithGeo() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasGeo(),
      );

  LogicalChannel notMatchWithGeo() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasGeo(),
      );

  LogicalChannel matchLanguage(final TweetLanguage language) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createTweetLang(language),
      );

  LogicalChannel notMatchLanguage(final TweetLanguage language) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedTweetLang(language),
      );

  LogicalChannel matchFollowersCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createFollowersCount(range),
      );

  LogicalChannel notMatchFollowersCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedFollowersCount(range),
      );

  LogicalChannel matchTweetsCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createTweetsCount(range),
      );

  LogicalChannel notMatchTweetsCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedTweetsCount(range),
      );

  LogicalChannel matchFollowingCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createFollowingCount(range),
      );

  LogicalChannel notMatchFollowingCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedFollowingCount(range),
      );

  LogicalChannel matchListedCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createListedCount(range),
      );

  LogicalChannel notMatchListedCount(final Range range) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedListedCount(range),
      );

  LogicalChannel matchUrlTitle(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createUrlTitle(value),
      );

  LogicalChannel notMatchUrlTitle(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedUrlTitle(value),
      );

  LogicalChannel matchUrlDescription(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createUrlDescription(value),
      );

  LogicalChannel notMatchUrlDescription(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedUrlDescription(value),
      );

  LogicalChannel matchUrlPartially(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createUrlContains(value),
      );

  LogicalChannel notMatchUrlPartially(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedUrlContains(value),
      );

  LogicalChannel matchSource(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createSource(value),
      );

  LogicalChannel notMatchSource(final String value) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedSource(value),
      );

  LogicalChannel matchRepliesOf(final String tweetId) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createRepliesOf(tweetId),
      );

  LogicalChannel notMatchRepliesOf(final String tweetId) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedRepliesOf(tweetId),
      );

  LogicalChannel matchRetweetOf(final String tweetId) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createRetweetsOf(tweetId),
      );

  LogicalChannel notMatchRetweetOf(final String tweetId) =>
      _buffer.appendConjunctionRequiredOperator(
        _conjunctionRequiredOperation.createNegatedRetweetsOf(tweetId),
      );
}
