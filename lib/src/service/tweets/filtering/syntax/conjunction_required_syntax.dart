// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
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

  LogicalChannel matchVerifiedUser() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createIsVerified(),
      );

  LogicalChannel notMatchVerifiedUser() => _buffer.appendSingletonOperator(
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

  LogicalChannel matchWithVideoLink() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasVideoLink(),
      );

  LogicalChannel notMatchWithVideoLink() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasVideoLink(),
      );

  LogicalChannel matchWithGeo() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createHasGeo(),
      );

  LogicalChannel notMatchWithGeo() => _buffer.appendSingletonOperator(
        _conjunctionRequiredOperation.createNegatedHasGeo(),
      );

  LogicalChannel matchLanguage(final TweetLanguage language) =>
      _buffer.appendOperator(
        _conjunctionRequiredOperation.createTweetLang(language),
      );

  LogicalChannel notMatchLanguage(final TweetLanguage language) =>
      _buffer.appendOperator(
        _conjunctionRequiredOperation.createNegatedTweetLang(language),
      );

  LogicalChannel matchSource(final String value) => _buffer.appendOperator(
        _conjunctionRequiredOperation.createSource(value),
      );

  LogicalChannel notMatchSource(final String value) => _buffer.appendOperator(
        _conjunctionRequiredOperation.createNegatedSource(value),
      );
}
