<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>Twitter API v2.0 🐦 এর জন্য এটি হল একটি হালকা এবং ক্রস-প্ল্যাটফর্ম মোড়ক</b>
</p>

---

[![Awesome](https://awesome.re/badge.svg)](https://github.com/andypiper/awesome-modern-twitter-api)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Maintainer&message=myConsciousness&logo=GitHub&color=00acee)](https://github.com/myConsciousness)

[![v2](https://img.shields.io/endpoint?url=https%3A%2F%2Ftwbadges.glitch.me%2Fbadges%2Fv2)](https://developer.twitter.com/en/docs/twitter-api)
[![pub package](https://img.shields.io/pub/v/twitter_api_v2.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/twitter_api_v2)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/twitter_api_v2)](https://pub.dev/packages/twitter_api_v2/)
[![Test](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml)
[![Analyzer](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml)
[![codecov](https://codecov.io/gh/twitter-dart/twitter-api-v2/branch/main/graph/badge.svg?token=J5GT1PF9Y3)](https://codecov.io/gh/twitter-dart/twitter-api-v2)
[![Issues](https://img.shields.io/github/issues/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/pulls)
[![Stars](https://img.shields.io/github/stars/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Contributors](https://img.shields.io/github/contributors/twitter-dart/twitter-api-v2)](https://github.com/twitter-dart/twitter-api-v2/graphs/contributors)
[![Code size](https://img.shields.io/github/languages/code-size/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Last Commits](https://img.shields.io/github/last-commit/twitter-dart/twitter-api-v2?logo=git&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/commits/main)
[![License](https://img.shields.io/github/license/twitter-dart/twitter-api-v2?logo=open-source-initiative&logoColor=green)](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_shield)

---

| [English](https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md) | [日本語](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-JA.md) | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | [Tiếng Việt](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-VI.md) | বাংলা | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | [Deutsch](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-DE.md) |

---

<!-- TOC -->

- [1. নির্দেশনা 🌎](#1-নির্দেশনা-)
  - [1.1. সূচনা ⚡](#11-সূচনা-)
    - [1.1.1. ইন্সটল লাইব্রেরী](#111-ইন্সটল-লাইব্রেরী)
    - [1.1.2. ইমপোর্ট](#112-ইমপোর্ট)
    - [1.1.3. ইমপ্লিমেনটেশন](#113-ইমপ্লিমেনটেশন)
  - [1.2. সাপোর্টেড এন্ডপয়েন্টস 👀](#12-সাপোর্টেড-এন্ডপয়েন্টস-)
    - [1.2.1. টুইটস সার্ভিস](#121-টুইটস-সার্ভিস)
      - [1.2.1.1. টুইট](#1211-টুইট)
      - [1.2.1.2. লাইকস](#1212-লাইকস)
      - [1.2.1.3. রিটুইটস](#1213-রিটুইটস)
      - [1.2.1.4. কোট টুইটস](#1214-কোট-টুইটস)
      - [1.2.1.5. সার্চ টুইটস](#1215-সার্চ-টুইটস)
      - [1.2.1.6. লুকআপ টুইটস](#1216-লুকআপ-টুইটস)
      - [1.2.1.7. টুইট কাউন্টস](#1217-টুইট-কাউন্টস)
      - [1.2.1.8. বুকমার্কস](#1218-বুকমার্কস)
      - [1.2.1.9. টাইমলাইন্স](#1219-টাইমলাইন্স)
      - [1.2.1.10. হাইড রিপ্লাইস](#12110-হাইড-রিপ্লাইস)
      - [1.2.1.11. ভলিউম স্ট্রীম](#12111-ভলিউম-স্ট্রীম)
      - [1.2.1.12. ফিল্টার্ড স্ট্রীম](#12112-ফিল্টার্ড-স্ট্রীম)
    - [1.2.2. ইউজারস সার্ভিস](#122-ইউজারস-সার্ভিস)
      - [1.2.2.1. ফলৌস](#1221-ফলৌস)
      - [1.2.2.2. লুকআপ ইউজারস](#1222-লুকআপ-ইউজারস)
      - [1.2.2.3. ইউজারস মিউটস](#1223-ইউজারস-মিউটস)
      - [1.2.2.4. ব্লক্স](#1224-ব্লক্স)
    - [1.2.3. স্পেসেস সার্ভিস](#123-স্পেসেস-সার্ভিস)
      - [1.2.3.1. সার্চ স্পেসেস](#1231-সার্চ-স্পেসেস)
      - [1.2.3.2. লুকআপ স্পেসেস](#1232-লুকআপ-স্পেসেস)
    - [1.2.4. লিস্টস সার্ভিস](#124-লিস্টস-সার্ভিস)
      - [1.2.4.1. লুকআপ লিস্টস](#1241-লুকআপ-লিস্টস)
      - [1.2.4.2. পিনিংস](#1242-পিনিংস)
      - [1.2.4.3. টুইট লুকআপ](#1243-টুইট-লুকআপ)
      - [1.2.4.4. লিস্ট ম্যানেজ](#1244-লিস্ট-ম্যানেজ)
      - [1.2.4.5. ফলৌস](#1245-ফলৌস)
      - [1.2.4.6. মেম্বারস](#1246-মেম্বারস)
    - [1.2.5. কমপ্লায়েন্স সার্ভিস](#125-কমপ্লায়েন্স-সার্ভিস)
      - [1.2.5.1. ব্যাচ কমপ্লায়েন্স](#1251-ব্যাচ-কমপ্লায়েন্স)
  - [1.3. টিপ্স 🏄](#13-টিপ্স-)
    - [1.3.1. মেথড নেইমস](#131-মেথড-নেইমস)
    - [1.3.2. জেনারেট অ্যাপ-অনলি বিয়ারার টোকেন](#132-জেনারেট-অ্যাপ-অনলি-বিয়ারার-টোকেন)
    - [1.3.3. নাল প্যারামিটার এট রিকোয়েস্ট](#133-নাল-প্যারামিটার-এট-রিকোয়েস্ট)
    - [1.3.4. `expansions` দিয়ে অবজেক্ট ফিল্ডগুলো বৃদ্ধি করুন](#134-expansions-দিয়ে-অবজেক্ট-ফিল্ডগুলো-বৃদ্ধি-করুন)
    - [1.3.5. `fields` দিয়ে অবজেক্ট ফিল্ডগুলো বৃদ্ধি করুন](#135-fields-দিয়ে-অবজেক্ট-ফিল্ডগুলো-বৃদ্ধি-করুন)
  - [1.4. কন্ট্রিবিউশন 🏆](#14-কন্ট্রিবিউশন-)
  - [1.5. কন্ট্রিবিউটরস ✨](#15-কন্ট্রিবিউটরস-)
  - [1.6. সাপোর্ট ❤️](#16-সাপোর্ট-️)
  - [1.7. লাইসেন্স 🔑](#17-লাইসেন্স-)
  - [1.8. আরও তথ্যাবলী 🧐](#18-আরও-তথ্যাবলী-)

<!-- /TOC -->

# 1. নির্দেশনা 🌎

এই লাইব্রেরী **Dart** এবং **Flutter** অ্যাপ্স এ [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) ব্যবহার করতে সহজতম পদ্ধতি প্রদান করে।

**আপনাদের ❤️ এবং repo তে স্টার দিয়ে প্রোজেক্টটিকে সাহায্য করুন।**

## 1.1. সূচনা ⚡

### 1.1.1. ইন্সটল লাইব্রেরী

**Dart এর সাথেঃ**

```bash
 dart pub add twitter_api_v2
```

**অথবা Flutter এর সাথেঃ**

```bash
 flutter pub add twitter_api_v2
```

### 1.1.2. ইমপোর্ট

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.1.3. ইমপ্লিমেনটেশন

```dart
void main() async {
  //! https://developer.twitter.com এই লিঙ্ক থেকে আপনার কী এবং টোকেন নিতে হবে।
  final twitter = v2.TwitterApi(
    //! পূর্বনির্ধারিতভাবে অথেনটিকেশন OAuth2.0 দিয়ে করা আছে।
    //!
    //! উল্লেখ্য যে এন্ডপয়েন্টস ব্যবহার করতে হলে প্রয়োজন নির্দিষ্ট ইউজার এর অনুমতি।
    //! যেমনঃ টুইটস এবং লাইকস। কিন্তু তার জন্য আপনাকে OAuth2.0 PKCE থেকে
    //! একটি টোকেন জারি করতে হবে।
    bearerToken: 'YOUR_TOKEN_HERE',

    //! নয়তো বা আপনি পছন্দমত OAuth2.0 PKCE মেথড এর পরিবর্তে পুরাতন সেই
    //! OAuth1.0a মেথড ব্যবহার করবেন। অতঃপর আপনি OAuth1.0a এর টোকেন
    //! তৈরি করতে এই নিম্নলিখিত কোড ব্যবহার করতে পারেন।
    //!
    //! যাইহোক, মনে রাখবেন যে কতিপয় এন্ডপয়েন্টস অথেনটিকেশন এর জন্য
    //! OAuth 1.0a মেথড ব্যবহার করা যাবে না।
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    // অথেনটিকেটেড ইউজার এর প্রোফাইল পেতে হলে।
    final me = await twitter.usersService.lookupMe();
    // সার্চ কোয়েরি সম্পৃক্ত টুইটস পেতে হলে।
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // আপনি সার্চ রেজাল্ট বৃদ্ধি করতে পারবেন।
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
      tweetFields: [
        v2.TweetField.conversationId,
        v2.TweetField.publicMetrics,
      ],
      userFields: [
        v2.UserField.location,
        v2.UserField.verified,
        v2.UserField.entities,
        v2.UserField.publicMetrics,
      ],
    );

    await twitter.tweetsService.createLike(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    // উচ্চ ক্ষমতা সম্পন্ন ভলিউম স্ট্রীম এন্ডপয়েন্ট পাওয়া যায়।
    final volumeStream = await twitter.tweetsService.connectVolumeStream();
    await for (final response in volumeStream.handleError(print)) {
      print(response);
    }

    // আরও উচ্চ ক্ষমতা সম্পন্ন ফিল্টার্ড স্ট্রীম এন্ডপয়েন্ট পাওয়া যায়।
    await twitter.tweetsService.createFilteringRules(
      rules: [
        v2.FilteringRuleParam(value: '#ElonMusk'),
        v2.FilteringRuleParam(value: '#Tesla'),
        v2.FilteringRuleParam(value: '#SpaceX'),
      ],
    );

    final filteredStream = await twitter.tweetsService.connectFilteredStream();
    await for (final response in filteredStream.handleError(print)) {
      print(response.data);
      print(response.matchingRules);
    }
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.body);
    print(e);
  }
}
```

## 1.2. সাপোর্টেড এন্ডপয়েন্টস 👀

### 1.2.1. টুইটস সার্ভিস

#### 1.2.1.1. টুইট

| এন্ডপয়েন্ট                                                                                                                       | মেথডের নাম                                                                                                            |
| ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)            | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html)   |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.2.1.2. লাইকস

| এন্ডপয়েন্ট                                                                                                                                            | মেথডের নাম                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)                        | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html)               |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html)             |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)          | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)            | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.2.1.3. রিটুইটস

| এন্ডপয়েন্ট                                                                                                                                                            | মেথডের নাম                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)                               | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html)               |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html)             |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)                       | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.2.1.4. কোট টুইটস

| এন্ডপয়েন্ট                                                                                                                                          | মেথডের নাম                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.2.1.5. সার্চ টুইটস

| এন্ডপয়েন্ট                                                                                                                               | মেথডের নাম                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)       | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html)       |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.2.1.6. লুকআপ টুইটস

| এন্ডপয়েন্ট                                                                                                          | মেথডের নাম                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)        | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html)  |

#### 1.2.1.7. টুইট কাউন্টস

| এন্ডপয়েন্ট                                                                                                                               | মেথডের নাম                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)       | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html)       |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.2.1.8. বুকমার্কস

| এন্ডপয়েন্ট                                                                                                                                                        | মেথডের নাম                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks)                        | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html)   |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)                          | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.2.1.9. টাইমলাইন্স

| এন্ডপয়েন্ট                                                                                                                                                                 | মেথডের নাম                                                                                                                        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)                                     | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html)         |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)                                         | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html)             |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.2.1.10. হাইড রিপ্লাইস

| এন্ডপয়েন্ট                                                                                                                              | মেথডের নাম                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html)   |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.2.1.11. ভলিউম স্ট্রীম

| এন্ডপয়েন্ট                                                                                                                                       | মেথডের নাম                                                                                                                          |
| --------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectVolumeStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectVolumeStream.html) |

#### 1.2.1.12. ফিল্টার্ড স্ট্রীম

| এন্ডপয়েন্ট                                                                                                                                                      | মেথডের নাম                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html)   |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules)   | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html)   |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream)               | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.2.2. ইউজারস সার্ভিস

#### 1.2.2.1. ফলৌস

| এন্ডপয়েন্ট                                                                                                                                                                     | মেথডের নাম                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)                            | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html)         |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html)       |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)                                          | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html)   |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)                                          | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.2.2.2. লুকআপ ইউজারস

| এন্ডপয়েন্ট                                                                                                                                           | মেথডের নাম                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)                                            | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html)     |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)                                     | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html)       |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)                                      | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html)   |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)                                      | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html)           |

#### 1.2.2.3. ইউজারস মিউটস

| এন্ডপয়েন্ট                                                                                                                                                           | মেথডের নাম                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)                                 | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html)               |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html)             |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)                                           | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.2.2.4. ব্লক্স

| এন্ডপয়েন্ট                                                                                                                                                                | মেথডের নাম                                                                                                                         |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)                                 | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html)                 |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html)               |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)                                           | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

### 1.2.3. স্পেসেস সার্ভিস

#### 1.2.3.1. সার্চ স্পেসেস

| এন্ডপয়েন্ট                                                                                                                 | মেথডের নাম                                                                                                |
| ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.2.3.2. লুকআপ স্পেসেস

| এন্ডপয়েন্ট                                                                                                                                 | মেথডের নাম                                                                                                                        |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)                               | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html)               |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)                        | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html)                 |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)          | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html)             |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)          | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html)             |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.2.4. লিস্টস সার্ভিস

#### 1.2.4.1. লুকআপ লিস্টস

| এন্ডপয়েন্ট                                                                                                                                    | মেথডের নাম                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)                         | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html)       |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.2.4.2. পিনিংস

| এন্ডপয়েন্ট                                                                                                                                                              | মেথডের নাম                                                                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)                      | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html)   |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)                        | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.2.4.3. টুইট লুকআপ

| এন্ডপয়েন্ট                                                                                                                          | মেথডের নাম                                                                                                           |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.2.4.4. লিস্ট ম্যানেজ

| এন্ডপয়েন্ট                                                                                                                   | মেথডের নাম                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html)       |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html)     |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html)                 |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html)   |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.2.4.5. ফলৌস

| এন্ডপয়েন্ট                                                                                                                                                                  | মেথডের নাম                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)                      | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html)               |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html)             |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)                                  | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html)         |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)                        | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.2.4.6. মেম্বারস

| এন্ডপয়েন্ট                                                                                                                                                    | মেথডের নাম                                                                                                                     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)                      | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html)           |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html)         |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)                        | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html)         |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)               | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.2.5. কমপ্লায়েন্স সার্ভিস

#### 1.2.5.1. ব্যাচ কমপ্লায়েন্স

| এন্ডপয়েন্ট                                                                                                                                          | মেথডের নাম                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)      | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html)   |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)        | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html)   |

> **বিঃদ্রঃ**</br>
> অফিসিয়াল ডকুমেন্টেশনে তালিকাভুক্ত সকল অতিরিক্ত ফিল্ডগুলো কাজের উপযোগী নয়। আমরা সেগুলোকে ধাপে ধাপে কাজের উপযোগী করতে চাই। এছাড়াও আপনি যদি পরামর্শ দিতে বা কন্ট্রিবিউট করতে চান তবে আপনি একটি ইস্যু বা পুল রিকোয়েস্ট তৈরি করতে পারেন!

## 1.3. টিপ্স 🏄

### 1.3.1. মেথড নেইমস

`twitter_api_v2` এন্ডপয়েন্টের বৈশিষ্ট্যের উপর নির্ভর করে নিম্নোল্লেখিত আদর্শ উপসর্গ ব্যবহার করে। সুতরাং আপনি যে এন্ডপয়েন্ট ব্যবহার করতে চান তার অনুরূপ মেথডটি খুঁজে পাওয়া খুবই সহজ!

| উপসর্গ       | বর্ণনা                                                            |
| ----------- | --------------------------------------------------------------- |
| **lookup**  | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা উল্লেখ করে টুইটস, ইউজারস প্রভৃতি।       |
| **search**  | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা ব্যাপক সার্চ সম্পাদন করে।              |
| **connect** | এই উপসর্গটি উচ্চ ক্ষমতা সম্পন্ন স্ট্রীমিং সহ এন্ডপয়েন্টের সাথে সংযুক্ত থাকে।           |
| **count**   | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা একটি নির্দিষ্ট আইটেম গণনা করে।          |
| **create**  | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা স্টেট ক্রিয়েট করে যেমন `টুইট` এবং `ফলো`।  |
| **destroy** | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা স্টেট ডেস্ট্রয় করে যেমন `টুইট` এবং `ফলো`। |
| **update**  | এই উপসর্গটি এন্ডপয়েন্টের সাথে সংযুক্ত থাকে যা স্টেট আপডেট করে।                    |

### 1.3.2. জেনারেট অ্যাপ-অনলি বিয়ারার টোকেন

`twitter_api_v2` আপনার অ্যাপ-অনলি বিয়ারার টোকেন জেনারেট করতে/খুঁজে পেতে ইউটিলিটি প্রদান করে।

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  final bearerToken = await v2.OAuthUtils.generateAppOnlyBearerToken(
    consumerKey: 'YOUR_CONSUMER_KEY',
    consumerSecret: 'YOUR_CONSUMER_SECRET',
  );

  print(bearerToken);
}
```

### 1.3.3. নাল প্যারামিটার এট রিকোয়েস্ট

এই লাইব্রেরীতে, প্যারামিটারগুলো যা রিকোয়েস্ট টাইমে প্রয়োজন হয় না। যেমনঃ অপশনাল প্যারামিটারগুলোকে নাল হিসাবে নির্ধারণ করা হয়।
যাইহোক, এই লাইব্রেরী ব্যবহার করার সময় রিকোয়েস্ট পাঠাতে গিয়ে ডেভেলপারদের নাল প্যারামিটার সম্পর্কে জানার প্রয়োজন নেই।

তার অর্থ হল এই যে, যে সমস্ত প্যারামিটারগুলোর মান নাল দিয়ে নির্দিষ্ট করা হয় রিকোয়েস্ট পাঠানোর আগেই সেগুলোকে নিরাপদে সরানো হয় এবং বাতিল করা হয়।

যেমনঃ নাল দিয়ে নির্দিষ্ট করা আর্গুমেন্টগুলোকে নিম্নলিখিত রিকোয়েস্টে বাতিল হিসাবে গণ্য করা হয়।

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    // এই প্যারামিটারগুলো রিকোয়েস্ট পাঠানোর সময় বাতিল হিসাবে গণ্য হয় কারণ তাদের মান হচ্ছে নাল।
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.3.4. `expansions` দিয়ে অবজেক্ট ফিল্ডগুলো বৃদ্ধি করুন

ধরুন, পরিস্থিতি এমনও হতে পারে যেখানে ডাটাতে শুধুমাত্র একটি ID থাকে, এবং আপনি সেই ID এর সাথে যুক্ত থাকা ডাটা অবজেক্টটিও পুনরুদ্ধার করতে চান। এই ক্ষেত্রে, `Twitter API v2.0` স্পেসিফিকেশন যা `expansions` নামে পরিচিত তা খুবই দরকারী এবং এই লাইব্রেরী সেই স্পেসিফিকেশনটিকে সমর্থন করে।

মূলত এটি এন্ডপয়েন্টগুলোতে ব্যবহার করা যেতে পারে যা GET কমিউনিকেশন, যেমনঃ `lookup` এবং `search` প্রক্রিয়াকরণ করে। কতিপয় ফিল্ডগুলো [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html) এর `includes` প্রোপারটিতেও অন্তর্ভুক্ত হতে পারে।

আপনি নিম্নলিখিতভাবে `expansions` ব্যবহার করতে পারেনঃ

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      // আপনার প্রয়োজনীয় ফিল্ডগুলো নির্দিষ্ট করুন!
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
    );

    print(tweets);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

আরও বিস্তারিত জানতে `expansions` সম্পর্কে [Official Documentation](https://developer.twitter.com/en/docs/twitter-api/expansions) দেখতে পারেন।

### 1.3.5. `fields` দিয়ে অবজেক্ট ফিল্ডগুলো বৃদ্ধি করুন

`Twitter API v2.0` একটি অত্যন্ত আকর্ষণীয় স্পেসিফিকেশন সমর্থন করে, যা ইউজারদের পরিস্থিতির উপর নির্ভর করে প্রতিটি এন্ডপয়েন্টের জন্য রেসপন্স অবজেক্টে থাকা ডাটার পরিমাণ নিয়ন্ত্রণ করতে দেয়। এটাকে বলা হয় `fields` এবং এই লাইব্রেরী এই স্পেসিফিকেশন সমর্থন করে।

মূলত এটি এন্ডপয়েন্টগুলোতে ব্যবহার করা যেতে পারে যা GET কমিউনিকেশন, যেমনঃ `lookup` এবং `search` প্রক্রিয়াকরণ করে। কতিপয় ফিল্ডগুলো [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html) এর `includes` ফিল্ডেও অন্তর্ভুক্ত হতে পারে।

আপনি নিম্নলিখিতভাবে `fields` ব্যবহার করতে পারেনঃ

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      expansions: v2.TweetExpansion.values,
      tweetFields: [
        v2.TweetField.conversationId,
        v2.TweetField.publicMetrics,
      ],
      userFields: [
        v2.UserField.location,
        v2.UserField.publicMetrics,
      ],
    );

    print(tweets);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

> **বিঃদ্রঃ**</br>
> কতিপয় ফিল্ডগুলো `expansions` এর সাথে মিল রাখা আবশ্যক।

আরও বিস্তারিত জানতে `fields` সম্পর্কে [Official Documentation](https://developer.twitter.com/en/docs/twitter-api/fields) দেখতে পারেন।

## 1.4. কন্ট্রিবিউশন 🏆

আপনি যদি `twitter_api_v2` তে কন্ট্রিবিউট করতে চান, তাহলে অনুগ্রহ করে একটি [ইস্যু](https://github.com/twitter-dart/twitter-api-v2/issues) তৈরি করুন অথবা পুল রিকোয়েস্ট তৈরি করুন।

OSS এ কন্ট্রিবিউট করার অনেক পদ্ধতি রয়েছে। উদাহরণস্বরূপ, নিম্নোল্লেখিত বিষয়গুলো বিবেচনা করা যেতে পারেঃ

- অনেক রিকোয়েস্ট প্যারামিটারস বা রেসপন্স ফিল্ডস রয়েছে যা এখনও ইমপ্লিমেন্ট করা হয়নি।
- ডকুমেন্টেশন পুরাতন বা অসম্পূর্ণই রয়ে গেছে।
- ফাংশনালিটি অর্জনের জন্য আরও উত্তম উপায় বা ধারণা দিয়ে সাহায্য করা।
- ইত্যাদি আরও অনেক ...

আপনি নিম্নোল্লেখিত পদ্ধতিগুলো থেকে আরও বিস্তারিত দেখতে পারেনঃ

- [কন্ট্রিবিউটর কোভেন্যান্ট কোড অফ কন্ডাক্ট](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [কন্ট্রিবিউশন গাইডলাইনস](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [স্টাইল গাইড](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

অথবা আপনি চাইলে [ডিসকাশন](https://github.com/twitter-dart/twitter-api-v2/discussions) তৈরি করতে পারেন।

**এই ডেভেলপমেন্টে নির্দ্বিধায় যোগ দিন, বিভিন্ন মতামত সফ্টওয়্যারকে আরও ভালভাবে উন্নত হতে সাহায্য করে!**

## 1.5. কন্ট্রিবিউটরস ✨

আন্তরিক শুভেচ্ছা এবং অসংখ্য ধন্যবাদ সকল অপূর্ব কন্ট্রিবিউটরবৃন্দদের ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/myConsciousness"><img src="https://avatars.githubusercontent.com/u/13072231?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Kato Shinya / 加藤 真也</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Code">💻</a> <a href="#content-myConsciousness" title="Content">🖋</a> <a href="#data-myConsciousness" title="Data">🔣</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Documentation">📖</a> <a href="#design-myConsciousness" title="Design">🎨</a> <a href="#example-myConsciousness" title="Examples">💡</a> <a href="#fundingFinding-myConsciousness" title="Funding Finding">🔍</a> <a href="#ideas-myConsciousness" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-myConsciousness" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-myConsciousness" title="Maintenance">🚧</a> <a href="#mentoring-myConsciousness" title="Mentoring">🧑‍🏫</a> <a href="#projectManagement-myConsciousness" title="Project Management">📆</a> <a href="#question-myConsciousness" title="Answering Questions">💬</a> <a href="https://github.com/twitter-dart/twitter-api-v2/pulls?q=is%3Apr+reviewed-by%3AmyConsciousness" title="Reviewed Pull Requests">👀</a> <a href="#security-myConsciousness" title="Security">🛡️</a> <a href="#translation-myConsciousness" title="Translation">🌍</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Tests">⚠️</a> <a href="#tutorial-myConsciousness" title="Tutorials">✅</a></td>
    <td align="center"><a href="https://andypiper.me"><img src="https://avatars.githubusercontent.com/u/552452?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Andy Piper</b></sub></a><br /><a href="#content-andypiper" title="Content">🖋</a> <a href="#talk-andypiper" title="Talks">📢</a></td>
    <td align="center"><a href="https://github.com/XRayAdamo"><img src="https://avatars.githubusercontent.com/u/4430621?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Konstantin</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Code">💻</a> <a href="#design-XRayAdamo" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Documentation">📖</a> <a href="#example-XRayAdamo" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://ko-fi.com/robertodoering"><img src="https://avatars.githubusercontent.com/u/20045287?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Roberto Doering</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Code">💻</a> <a href="#design-robertodoering" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Documentation">📖</a> <a href="#example-robertodoering" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Tests">⚠️</a> <a href="#ideas-robertodoering" title="Ideas, Planning, & Feedback">🤔</a></td>
    <td align="center"><a href="https://github.com/niteshsh4rma"><img src="https://avatars.githubusercontent.com/u/58659088?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Nitesh Sharma</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Code">💻</a> <a href="#design-niteshsh4rma" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Documentation">📖</a> <a href="#example-niteshsh4rma" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Tests">⚠️</a> <a href="#ideas-niteshsh4rma" title="Ideas, Planning, & Feedback">🤔</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/ngoluuduythai"><img src="https://avatars.githubusercontent.com/u/12238262?v=4?s=100" width="100px;" alt=""/><br /><sub><b>ngoluuduythai</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=ngoluuduythai" title="Documentation">📖</a> <a href="#translation-ngoluuduythai" title="Translation">🌍</a></td>
    <td align="center"><a href="http://g.dev/abdullahalmahmud"><img src="https://avatars.githubusercontent.com/u/53822204?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Abdullah Al Mahmud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=its-me-mahmud" title="Documentation">📖</a> <a href="#translation-its-me-mahmud" title="Translation">🌍</a></td>
    <td align="center"><a href="https://github.com/omar6260"><img src="https://avatars.githubusercontent.com/u/82382673?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Oumar fall</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=omar6260" title="Documentation">📖</a> <a href="#translation-omar6260" title="Translation">🌍</a></td>
    <td align="center"><a href="http://www.natalieastroud.com"><img src="https://avatars.githubusercontent.com/u/17433156?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Natalie Stroud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=natastro" title="Documentation">📖</a> <a href="#translation-natastro" title="Translation">🌍</a></td>
    <td align="center"><a href="https://twitch.tv/novas1r1"><img src="https://avatars.githubusercontent.com/u/2575205?v=4?s=100" width="100px;" alt=""/><br /><sub><b>novas1r1</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=novas1r1" title="Documentation">📖</a> <a href="#translation-novas1r1" title="Translation">🌍</a> <a href="#ideas-novas1r1" title="Ideas, Planning, & Feedback">🤔</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

এই প্রোজেক্টটি [all-contributors](https://github.com/all-contributors/all-contributors) স্পেসিফিকেশন অনুসরণ করে। যে কোন প্রকারের কন্ট্রিবিউশনকে স্বাগতম!

## 1.6. সাপোর্ট ❤️

আমাদের আপনার সমর্থন দেখানোর সবচেয়ে সহজ পদ্ধতি হল **প্রোজেক্টটিতে একটি স্টার দেওয়া** [GitHub](https://github.com/twitter-dart/twitter-api-v2) এবং [Pub.dev](https://pub.dev/packages/twitter_api_v2) এ।

এছাড়াও আপনি GitHub এ **একজন স্পন্সর হিসাবে** প্রোজেক্টটিকে সাহায্য করতে পারেনঃ

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

এছাড়াও আপনি আপনার রিপোসিটোরিতে নিম্নোল্লেখিত যে কোন ব্যাজ প্রদর্শন করাতে পারেন যে আপনার অ্যাপটি `twitter_api_v2` দ্বারা নির্মিতঃ

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.7. লাইসেন্স 🔑

`twitter_api_v2` এর সমস্ত সংস্থানসমূহ `BSD-3` লাইসেন্সের অধীনে সরবরাহ করা আছে।

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **বিঃদ্রঃ**</br>
> `.github/header-checker-lint.yml` এর উপর ভিত্তি করে লাইসেন্স নোটিশের সূত্র কঠোরভাবে যাচাই করা আছে। অনুমোদিত মানদণ্ডের জন্য অনুগ্রহ করে [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) যাচাই করুন।

## 1.8. আরও তথ্যাবলী 🧐

`twitter_api_v2` টি **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_** এর দ্বারা ডিজাইন এবং ইমপ্লিমেন্ট করা হয়েছে।

- [ক্রিয়েটর প্রোফাইল](https://github.com/myConsciousness)
- [লাইসেন্স](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [API ডকুমেন্ট](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [রিলিজ নোট](https://github.com/twitter-dart/twitter-api-v2/releases)
- [বাগ রিপোর্ট](https://github.com/twitter-dart/twitter-api-v2/issues)
