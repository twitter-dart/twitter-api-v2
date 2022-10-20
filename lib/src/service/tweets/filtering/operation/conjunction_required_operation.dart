// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../common/range.dart';
import '../../tweet_language.dart';
import '../operator/conjunction/followers_count.dart';
import '../operator/conjunction/following_count.dart';
import '../operator/conjunction/has_operator.dart';
import '../operator/conjunction/has_operator_type.dart';
import '../operator/conjunction/is_operator.dart';
import '../operator/conjunction/is_operator_type.dart';
import '../operator/conjunction/listed_count.dart';
import '../operator/conjunction/replies_of.dart';
import '../operator/conjunction/retweets_of.dart';
import '../operator/conjunction/source.dart';
import '../operator/conjunction/tweet_lang.dart';
import '../operator/conjunction/tweets_count.dart';
import '../operator/conjunction/url_contains.dart';
import '../operator/conjunction/url_description.dart';
import '../operator/conjunction/url_title.dart';

class ConjunctionRequiredOperation {
  /// Returns the new instance of [ConjunctionRequiredOperation].
  const ConjunctionRequiredOperation();

  /// `is:retweet`
  static const _isRetweet = IsOperator(IsOperatorType.retweet);

  /// `-is:retweet`
  static const _isNotRetweet =
      IsOperator(IsOperatorType.retweet, negated: true);

  /// `is:reply`
  static const _isReply = IsOperator(IsOperatorType.reply);

  /// `-is:reply`
  static const _isNotReply = IsOperator(IsOperatorType.reply, negated: true);

  /// `is:quote`
  static const _isQuote = IsOperator(IsOperatorType.quote);

  /// `-is:quote`
  static const _isNotQuote = IsOperator(IsOperatorType.quote, negated: true);

  /// `is:verified`
  static const _isVerified = IsOperator(IsOperatorType.verified);

  /// `-is:verified`
  static const _isNotVerified =
      IsOperator(IsOperatorType.verified, negated: true);

  /// `-is:nullcast`
  static const _isNotNullCast =
      IsOperator(IsOperatorType.nullcast, negated: true);

  /// `has:hashtags`
  static const _hasHashtags = HasOperator(HasOperatorType.hashtags);

  /// `-has:hashtags`
  static const _hasNotHashtags =
      HasOperator(HasOperatorType.hashtags, negated: true);

  /// `has:cashtags`
  static const _hasCashtags = HasOperator(HasOperatorType.cashtags);

  /// `-has:cashtags`
  static const _hasNotCashtags =
      HasOperator(HasOperatorType.cashtags, negated: true);

  /// `has:links`
  static const _hasLinks = HasOperator(HasOperatorType.links);

  /// `-has:links`
  static const _hasNotLinks = HasOperator(HasOperatorType.links, negated: true);

  /// `has:mentions`
  static const _hasMentions = HasOperator(HasOperatorType.mentions);

  /// `-has:mentions`
  static const _hasNotMentions =
      HasOperator(HasOperatorType.mentions, negated: true);

  /// `has:media`
  static const _hasMedia = HasOperator(HasOperatorType.media);

  /// `-has:media`
  static const _hasNotMedia = HasOperator(HasOperatorType.media, negated: true);

  /// `has:images`
  static const _hasImages = HasOperator(HasOperatorType.images);

  /// `-has:images`
  static const _hasNotImages =
      HasOperator(HasOperatorType.images, negated: true);

  /// `has:video_link`
  static const _hasVideoLink = HasOperator(HasOperatorType.videoLink);

  /// `-has:video_link`
  static const _hasNotVideoLink =
      HasOperator(HasOperatorType.videoLink, negated: true);

  /// `has:geo`
  static const _hasGeo = HasOperator(HasOperatorType.geo);

  /// `-has:geo`
  static const _hasNotGeo = HasOperator(HasOperatorType.geo, negated: true);

  /// Returns the new instance of [IsOperator] as [IsOperatorType.retweet].
  IsOperator createIsRetweet() => _isRetweet;

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.retweet].
  IsOperator createNegatedIsRetweet() => _isNotRetweet;

  /// Returns the new instance of [IsOperator] as [IsOperatorType.reply].
  IsOperator createIsReply() => _isReply;

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.reply].
  IsOperator createNegatedIsReply() => _isNotReply;

  /// Returns the new instance of [IsOperator] as [IsOperatorType.quote].
  IsOperator createIsQuote() => _isQuote;

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.quote].
  IsOperator createNegatedIsQuote() => _isNotQuote;

  /// Returns the new instance of [IsOperator] as [IsOperatorType.verified].
  IsOperator createIsVerified() => _isVerified;

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.verified].
  IsOperator createNegatedIsVerified() => _isNotVerified;

  /// Returns the new instance of negated [IsOperator]
  /// based on [IsOperatorType.nullcast].
  IsOperator createNegatedIsNullCast() => _isNotNullCast;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.hashtags].
  HasOperator createHasHashtags() => _hasHashtags;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.hashtags].
  HasOperator createNegatedHasHashtags() => _hasNotHashtags;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.cashtags].
  HasOperator createHasCashtags() => _hasCashtags;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.cashtags].
  HasOperator createNegatedHasCashtags() => _hasNotCashtags;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.links].
  HasOperator createHasLinks() => _hasLinks;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.links].
  HasOperator createNegatedHasLinks() => _hasNotLinks;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.mentions].
  HasOperator createHasMentions() => _hasMentions;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.mentions].
  HasOperator createNegatedHasMentions() => _hasNotMentions;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.media].
  HasOperator createHasMedia() => _hasMedia;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.media].
  HasOperator createNegatedHasMedia() => _hasNotMedia;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.images].
  HasOperator createHasImages() => _hasImages;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.images].
  HasOperator createNegatedHasImages() => _hasNotImages;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.videoLink].
  HasOperator createHasVideoLinks() => _hasVideoLink;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.videoLink].
  HasOperator createNegatedHasVideoLinks() => _hasNotVideoLink;

  /// Returns the new instance of [HasOperator] as [HasOperatorType.geo].
  HasOperator createHasGeo() => _hasGeo;

  /// Returns the new instance of negated [HasOperator]
  /// based on [HasOperatorType.geo].
  HasOperator createNegatedHasGeo() => _hasNotGeo;

  /// Returns the new instance of [TweetLang] based on [language].
  TweetLang createTweetLang(final TweetLanguage language) =>
      TweetLang(language);

  /// Returns the new instance of negated [TweetLang]
  /// based on [language].
  TweetLang createNegatedTweetLang(final TweetLanguage language) =>
      TweetLang.negated(language);

  /// Returns the new instance of [FollowersCount] based on [range].
  FollowersCount createFollowersCount(final Range range) =>
      FollowersCount(range);

  /// Returns the new instance of negated [FollowersCount]
  /// based on [range].
  FollowersCount createNegatedFollowersCount(final Range range) =>
      FollowersCount.negated(range);

  /// Returns the new instance of [TweetsCount] based on [range].
  TweetsCount createTweetsCount(final Range range) => TweetsCount(range);

  /// Returns the new instance of negated [TweetsCount]
  /// based on [range].
  TweetsCount createNegatedTweetsCount(final Range range) =>
      TweetsCount.negated(range);

  /// Returns the new instance of [FollowingCount] based on [range].
  FollowingCount createFollowingCount(final Range range) =>
      FollowingCount(range);

  /// Returns the new instance of negated [FollowingCount]
  /// based on [range].
  FollowingCount createNegatedFollowingCount(final Range range) =>
      FollowingCount.negated(range);

  /// Returns the new instance of [ListedCount] based on [range].
  ListedCount createListedCount(final Range range) => ListedCount(range);

  /// Returns the new instance of negated [ListedCount]
  /// based on [range].
  ListedCount createNegatedListedCount(final Range range) =>
      ListedCount.negated(range);

  /// Returns the new instance of [UrlTitle] based on [value].
  UrlTitle createUrlTitle(final String value) => UrlTitle(value);

  /// Returns the new instance of negated [UrlTitle]
  /// based on [value].
  UrlTitle createNegatedUrlTitle(final String value) => UrlTitle.negated(value);

  /// Returns the new instance of [UrlDescription] based on [value].
  UrlDescription createUrlDescription(final String value) =>
      UrlDescription(value);

  /// Returns the new instance of negated [UrlDescription]
  /// based on [value].
  UrlDescription createNegatedUrlDescription(final String value) =>
      UrlDescription.negated(value);

  /// Returns the new instance of [UrlContains] based on [value].
  UrlContains createUrlContains(final String value) => UrlContains(value);

  /// Returns the new instance of negated [UrlContains]
  /// based on [value].
  UrlContains createNegatedUrlContains(final String value) =>
      UrlContains.negated(value);

  /// Returns the new instance of [Source] based on [value].
  Source createSource(final String value) => Source(value);

  /// Returns the new instance of negated [Source]
  /// based on [value].
  Source createNegatedSource(final String value) => Source.negated(value);

  /// Returns the new instance of [RepliesOf] based on [tweetId].
  RepliesOf createRepliesOf(final String tweetId) => RepliesOf(tweetId);

  /// Returns the new instance of negated [RepliesOf]
  /// based on [tweetId].
  RepliesOf createNegatedRepliesOf(final String tweetId) =>
      RepliesOf.negated(tweetId);

  /// Returns the new instance of [RetweetsOf] based on [tweetId].
  RetweetsOf createRetweetsOf(final String tweetId) => RetweetsOf(tweetId);

  /// Returns the new instance of negated [RetweetsOf]
  /// based on [tweetId].
  RetweetsOf createNegatedRetweetsOf(final String tweetId) =>
      RetweetsOf.negated(tweetId);
}
