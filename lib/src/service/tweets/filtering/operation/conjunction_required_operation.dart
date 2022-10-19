// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../operator/conjunction/has_operator.dart';
import '../operator/conjunction/has_operator_type.dart';
import '../operator/conjunction/is_operator.dart';
import '../operator/conjunction/is_operator_type.dart';

class ConjunctionRequiredOperation {
  /// Returns the new instance of [ConjunctionRequiredOperation].
  const ConjunctionRequiredOperation();

  /// Returns the new instance of [IsOperator] as [IsOperatorType.retweet].
  IsOperator createIsRetweet() => IsOperator(IsOperatorType.retweet);

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.retweet].
  IsOperator createNegatedIsRetweet() =>
      IsOperator.negated(IsOperatorType.retweet);

  /// Returns the new instance of [IsOperator] as [IsOperatorType.reply].
  IsOperator createIsReply() => IsOperator(IsOperatorType.reply);

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.reply].
  IsOperator createNegatedIsReply() => IsOperator.negated(IsOperatorType.reply);

  /// Returns the new instance of [IsOperator] as [IsOperatorType.quote].
  IsOperator createIsQuote() => IsOperator(IsOperatorType.quote);

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.quote].
  IsOperator createNegatedIsQuote() => IsOperator.negated(IsOperatorType.quote);

  /// Returns the new instance of [IsOperator] as [IsOperatorType.verified].
  IsOperator createIsVerified() => IsOperator(IsOperatorType.verified);

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.verified].
  IsOperator createNegatedIsVerified() =>
      IsOperator.negated(IsOperatorType.verified);

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.nullcast].
  IsOperator createNegatedIsNullCast() =>
      IsOperator.negated(IsOperatorType.nullcast);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.hashtags].
  HasOperator createHasHashtags() => HasOperator(HasOperatorType.hashtags);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.hashtags].
  HasOperator createNegatedHasHashtags() =>
      HasOperator.negated(HasOperatorType.hashtags);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.cashtags].
  HasOperator createHasCashtags() => HasOperator(HasOperatorType.cashtags);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.cashtags].
  HasOperator createNegatedHasCashtags() =>
      HasOperator.negated(HasOperatorType.cashtags);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.links].
  HasOperator createHasLinks() => HasOperator(HasOperatorType.links);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.links].
  HasOperator createNegatedHasLinks() =>
      HasOperator.negated(HasOperatorType.links);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.mentions].
  HasOperator createHasMentions() => HasOperator(HasOperatorType.mentions);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.mentions].
  HasOperator createNegatedHasMentions() =>
      HasOperator.negated(HasOperatorType.mentions);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.media].
  HasOperator createHasMedia() => HasOperator(HasOperatorType.media);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.media].
  HasOperator createNegatedHasMedia() =>
      HasOperator.negated(HasOperatorType.media);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.images].
  HasOperator createHasImages() => HasOperator(HasOperatorType.images);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.images].
  HasOperator createNegatedHasImages() =>
      HasOperator.negated(HasOperatorType.images);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.videoLink].
  HasOperator createHasVideoLinks() => HasOperator(HasOperatorType.videoLink);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.videoLink].
  HasOperator createNegatedHasVideoLinks() =>
      HasOperator.negated(HasOperatorType.videoLink);

  /// Returns the new instance of [HasOperator] as [HasOperatorType.geo].
  HasOperator createHasGeo() => HasOperator(HasOperatorType.geo);

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.geo].
  HasOperator createNegatedHasGeo() => HasOperator.negated(HasOperatorType.geo);
}
