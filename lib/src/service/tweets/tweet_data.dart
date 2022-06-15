// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'geo.dart';
import 'public_tweet_metrics.dart';
import 'referenced_tweet.dart';
import 'reply_setting.dart';
import 'tweet_attachments.dart';
import 'tweet_context_annotation_group.dart';
import 'tweet_entities.dart';
import 'tweet_language.dart';
import 'tweet_withheld.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    /// Unique identifier of this Tweet. This is returned as a string in order
    /// to avoid complications with languages and tools that cannot handle
    /// large integers.
    required String id,

    /// The content of the Tweet.
    required String text,

    /// Unique identifier of this user. This is returned as a string in order
    /// to avoid complications with languages and tools that cannot handle large
    /// integers.
    ///
    /// You can obtain the expanded object in `includes.users` by adding
    /// `TweetExpansion.authorId` in the request's query parameter.
    String? authorId,

    /// If this Tweet is a Reply, indicates the user ID of the parent Tweet's
    /// author. This is returned as a string in order to avoid complications
    /// with languages and tools that cannot handle large integers.
    ///
    /// You can obtain the expanded object in `includes.users` by adding
    /// `TweetExpansion.inReplyToUserId` in the request's query parameter.
    String? inReplyToUserId,

    /// The Tweet ID of the original Tweet of the conversation (which includes
    /// direct replies, replies of replies).
    ///
    /// To obtain this field, add `TweetField.conversationId` in the request's
    /// query parameter.
    String? conversationId,

    /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
    /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
    /// Reply, it will include the related Tweet referenced to by its parent.
    ///
    /// To obtain this field, add `TweetField.referencedTweets` in the
    /// request's query parameter.
    List<ReferencedTweet>? referencedTweets,

    /// Contains context annotations for the Tweet.
    ///
    /// To obtain this field, add `TweetField.contextAnnotations` in the
    /// request's query parameter.
    List<TweetContextAnnotationGroup>? contextAnnotations,

    /// Contains details about text that has a special meaning in a Tweet.
    ///
    /// To obtain this field, add `TweetField.entities` in the request's query
    /// parameter.
    TweetEntities? entities,

    /// Specifies the type of attachments (if any) present in this Tweet.
    ///
    /// To obtain this field, add `TweetField.attachments` in the request's
    /// query parameter.
    TweetAttachments? attachments,

    /// Engagement metrics for the Tweet at the time of the request.
    ///
    /// To obtain this field, add `TweetField.publicMetrics` in the request's
    /// query parameter.
    PublicTweetMetrics? publicMetrics,

    /// Contains details about the location tagged by the user in this Tweet,
    /// if they specified one.
    ///
    /// To obtain this field, add `TweetField.geo` in the request's query
    /// parameter.
    Geo? geo,

    /// Language of the Tweet, if detected by Twitter. Returned as a BCP47
    /// language.
    ///
    /// To return this field, add `TweetField.lang` in the request's
    /// query parameter.
    TweetLanguage? lang,

    /// Indicates if this Tweet contains URLs marked as sensitive, for example
    /// content suitable for mature audiences.
    ///
    /// To obtain this field, add `TweetField.possiblySensitive` in the
    /// request's query parameter.
    @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,

    /// Shows who can reply to this Tweet. Fields returned are
    /// [ReplySetting.everyone], [ReplySetting.mentionedUsers],
    /// and [ReplySetting.following].

    /// To obtain this field, add `TweeField.replySetting` in the
    /// request's query parameter.
    @JsonKey(name: 'reply_settings') ReplySetting? replySetting,

    /// The name of the app the user Tweeted from.
    ///
    /// To obtain this field, add `TweetField.source` in the request's
    /// query parameter.
    String? source,

    /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
    ///
    /// To return this field, add `TweetField.withheld` in the request's query
    /// parameter.
    TweetWithheld? withheld,

    /// Creation time of the Tweet.
    ///
    /// To obtain this field, add `TweetField.createdAt` in the request's query
    /// parameter.
    DateTime? createdAt,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
