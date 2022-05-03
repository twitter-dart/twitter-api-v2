<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>The Lightweight and Cross-Platform Wrapper for Twitter API v2.0 🐦</b>
</p>

---

[![pub package](https://img.shields.io/pub/v/twitter_api_v2.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/twitter_api_v2)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/twitter_api_v2)](https://pub.dev/packages/twitter_api_v2/)
[![Test](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml)
[![Analyzer](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml)
[![codecov](https://codecov.io/gh/twitter-dart/twitter-api-v2/branch/main/graph/badge.svg?token=J5GT1PF9Y3)](https://codecov.io/gh/twitter-dart/twitter-api-v2)
[![Issues](https://img.shields.io/github/issues/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/pulls)
[![Stars](https://img.shields.io/github/stars/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Code size](https://img.shields.io/github/languages/code-size/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Last Commits](https://img.shields.io/github/last-commit/twitter-dart/twitter-api-v2?logo=git&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/commits/main)
[![License](https://img.shields.io/github/license/twitter-dart/twitter-api-v2?logo=open-source-initiative&logoColor=green)](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_shield)

<p>
  <a href="https://github.com/sponsors/myconsciousness">
    <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
  </a>
</p>

---

<!-- TOC -->

- [1. Guide](#1-guide)
  - [1.1. Getting Started](#11-getting-started)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import](#112-import)
    - [1.1.3. Implementation](#113-implementation)
  - [1.2. Supported Endpoints](#12-supported-endpoints)
  - [1.3. Contribution](#13-contribution)
  - [1.4. Support](#14-support)
  - [1.5. License](#15-license)
  - [1.6. More Information](#16-more-information)

<!-- /TOC -->

# 1. Guide

This library provides the easiest way to use [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction).

**Show some ❤️ and star the repo to support the project.**

## 1.1. Getting Started

### 1.1.1. Install Library

**With Dart:**

```bash
 dart pub add twitter_api_v2
```

**Or With Flutter:**

```bash
 flutter pub add twitter_api_v2
```

### 1.1.2. Import

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.1.3. Implementation

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  //! You need to get keys and tokens at https://developer.twitter.com
  final twitter = v2.TwitterApi(
    //! Authentication with OAuth2.0 is the default.
    //!
    //! Note that to use endpoints that require certain user permissions,
    //! such as Tweets and Likes, you need a token issued by OAuth2.0 PKCE.
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Or perhaps you would prefer to use the good old OAuth1.0a method
    //! instead of OAuth2.0 PKCE method. Then you can use the following code
    //! to set the OAuth1.0a tokens.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    final me = await twitter.usersService.lookupMe();
    final tweets = await twitter.tweetService.searchRecent(query: '#ElonMusk');

    final response = await twitter.tweetService.createLike(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    print(response);
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.response.body);
  }
}
```

## 1.2. Supported Endpoints

1. **Tweets Service**

   1. **Manage Tweet**
      1. [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id)
      2. [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)
   2. **Likes**
      1. [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id)
      2. [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)
      3. [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)
      4. [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)
   3. **Retweets**
      1. [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id)
      2. [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)
      3. [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)
   4. **Quote Tweets**
      1. [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets)
   5. **Search Tweets**
      1. [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)
      2. [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent)
   6. **Lookup Tweets**
      1. [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)
      2. [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id)

2. **Users**
   1. **Follows**
      1. [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following)
      2. [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)
      3. [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)
      4. [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)

## 1.3. Contribution

If you would like to contribute to `twitter_api_v2`, please create an [issue](https://github.com/twitter-dart/twitter-api-v2/issues) or create a Pull Request.

Owner will respond to issues and review pull requests as quickly as possible.

## 1.4. Support

The simplest way to show us your support is by giving the project a star at [here](https://github.com/twitter-dart/twitter-api-v2).

And I'm always looking for sponsors to support this project. I'm not asking for royalties for use in providing this framework, but I do need support to continue ongoing open source development.

Sponsors can be individuals or corporations, and the amount is optional.

<div align="center">
  <p>
    <b>👇 Click on the button below to see more details! 👇</b>
  </p>

  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

## 1.5. License

All resources of `twitter_api_v2` is provided under the `BSD-3` license.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> Note:
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.6. More Information

`twitter_api_v2` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [Release Note](https://github.com/twitter-dart/twitter-api-v2/releases)
- [Bug Report](https://github.com/twitter-dart/twitter-api-v2/issues)
