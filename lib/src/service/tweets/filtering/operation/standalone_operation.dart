// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../operator/standalone/cashtag.dart';
import '../operator/standalone/conversation.dart';
import '../operator/standalone/hashtag.dart';
import '../operator/standalone/keyword.dart';
import '../operator/standalone/place.dart';
import '../operator/standalone/retweeted_by.dart';
import '../operator/standalone/tweet_from.dart';
import '../operator/standalone/tweet_to.dart';
import '../operator/standalone/url.dart';
import '../operator/standalone/user_bio.dart';
import '../operator/standalone/user_bio_location.dart';
import '../operator/standalone/user_bio_name.dart';
import '../operator/standalone/username.dart';

class StandaloneOperation {
  /// Returns the new instance of [StandaloneOperation].
  const StandaloneOperation();

  /// Returns the new instance of [Keyword] based on [value].
  Keyword createKeyword(final String value) => Keyword(value);

  /// Returns the new instance of negated [Keyword] based on [value].
  Keyword createNegatedKeyword(final String value) => Keyword.negated(value);

  /// Returns the new instance of [Hashtag] based on [value].
  Hashtag createHashtag(final String value) => Hashtag(value);

  /// Returns the new instance of negated [Hashtag] based on [value].
  Hashtag createNegatedHashtag(final String value) => Hashtag.negated(value);

  /// Returns the new instance of [Cashtag] based on [value].
  Cashtag createCashtag(final String value) => Cashtag(value);

  /// Returns the new instance of negated [Cashtag] based on [value].
  Cashtag createNegatedCashtag(final String value) => Cashtag.negated(value);

  /// Returns the new instance of [Username] based on [username].
  Username createUsername(final String username) => Username(username);

  /// Returns the new instance of negated [Username] based on [username].
  Username createNegatedUsername(final String username) =>
      Username.negated(username);

  /// Returns the new instance of [TweetFrom] based on [username].
  TweetFrom createTweetFrom(final String username) => TweetFrom(username);

  /// Returns the new instance of negated [TweetFrom] based on [username].
  TweetFrom createNegatedTweetFrom(final String username) =>
      TweetFrom.negated(username);

  /// Returns the new instance of [TweetTo] based on [username].
  TweetTo createTweetTo(final String username) => TweetTo(username);

  /// Returns the new instance of negated [TweetTo] based on [username].
  TweetTo createNegatedTweetTo(final String username) =>
      TweetTo.negated(username);

  /// Returns the new instance of [Url] based on [value].
  Url createUrl(final String value) => Url(value);

  /// Returns the new instance of negated [Url] based on [value].
  Url createNegatedUrl(final String value) => Url.negated(value);

  /// Returns the new instance of [RetweetedBy] based on [username].
  RetweetedBy createRetweetedBy(final String username) => RetweetedBy(username);

  /// Returns the new instance of negated [RetweetedBy] based on [username].
  RetweetedBy createNegatedRetweetedBy(final String username) =>
      RetweetedBy.negated(username);

  /// Returns the new instance of [Conversation] based on [tweetId].
  Conversation createConversation(final String tweetId) =>
      Conversation(tweetId);

  /// Returns the new instance of negated [Conversation] based on [tweetId].
  Conversation createNegatedConversation(final String tweetId) =>
      Conversation.negated(tweetId);

  /// Returns the new instance of [UserBio] based on [value].
  UserBio createUserBio(final String value) => UserBio(value);

  /// Returns the new instance of negated [UserBio] based on [value].
  UserBio createNegatedUserBio(final String value) => UserBio.negated(value);

  /// Returns the new instance of [UserBioName] based on [value].
  UserBioName createUserBioName(final String value) => UserBioName(value);

  /// Returns the new instance of negated [UserBioName] based on [value].
  UserBioName createNegatedUserBioName(final String value) =>
      UserBioName.negated(value);

  /// Returns the new instance of [UserBioLocation] based on [value].
  UserBioLocation createUserBioLocation(final String value) =>
      UserBioLocation(value);

  /// Returns the new instance of negated [UserBioLocation] based on [value].
  UserBioLocation createNegatedUserBioLocation(final String value) =>
      UserBioLocation.negated(value);

  /// Returns the new instance of [Place] based on [value].
  Place createPlace(final String value) => Place(value);

  /// Returns the new instance of negated [Place] based on [value].
  Place createNegatedPlace(final String value) => Place.negated(value);
}
