<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>The Lightweight and Cross-Platform Wrapper for Twitter API v2.0 🐦</b>
</p>

---

[![Awesome](https://awesome.re/badge.svg)](https://github.com/andypiper/awesome-modern-twitter-api)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)

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

<!-- TOC -->

- [1. Guide](#1-guide)
  - [1.1. Getting Started](#11-getting-started)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import](#112-import)
    - [1.1.3. Implementation](#113-implementation)
  - [1.2. Supported Endpoints](#12-supported-endpoints)
    - [1.2.1. Tweets Service](#121-tweets-service)
    - [1.2.2. Users Service](#122-users-service)
    - [1.2.3. Spaces Service](#123-spaces-service)
    - [1.2.4. Lists Service](#124-lists-service)
    - [1.2.5. Compliance Service](#125-compliance-service)
  - [1.3. Tips](#13-tips)
    - [1.3.1. Method Names](#131-method-names)
    - [1.3.2. Generate App-Only Bearer Token](#132-generate-app-only-bearer-token)
    - [1.3.3. Null Parameter at Request](#133-null-parameter-at-request)
  - [1.4. Contribution](#14-contribution)
  - [1.5. Support](#15-support)
  - [1.6. License](#16-license)
  - [1.7. More Information](#17-more-information)

<!-- /TOC -->

# 1. Guide

This library provides the easiest way to use [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) in **Dart** and **Flutter** apps.　

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
    //! over the OAuth2.0 PKCE method. Then you can use the following code
    //! to set the OAuth1.0a tokens.
    //!
    //! However, note that some endpoints cannot be used for OAuth 1.0a method
    //! authentication.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    // Get the authenticated user's profile.
    final me = await twitter.usersService.lookupMe();
    // Get the tweets associated with the search query.
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // You can expand the search result.
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
    );

    await twitter.tweetsService.createLike(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    // High-performance Stream endpoints are available.
    final stream = await twitter.tweetsService.connectVolumeStreams();
    await for (final tweet in stream.handleError(print)) {
      print(tweet);
    }
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.body);
    print(e);
  }
}
```

## 1.2. Supported Endpoints

### 1.2.1. Tweets Service

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
7. **Tweet Counts**
   1. [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)
   2. [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent)
8. **Bookmarks**
   1. [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)
   2. [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent)
9. **Timelines**
   1. [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)
   2. [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)
   3. [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological)
10. **Volume Streams**
    1. [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream)

### 1.2.2. Users Service

1. **Follows**
   1. [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following)
   2. [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)
   3. [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)
   4. [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)
2. **Lookup Users**
   1. [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)
   2. [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)
   3. [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)
   4. [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username)
   5. [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)
3. **Users Mutes**
   1. [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting)
   2. [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)
   3. [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)
4. **Hide Replies**
   1. [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden)
5. **Blocks**
   1. [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking)
   2. [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)
   3. [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)

### 1.2.3. Spaces Service

1. **Search Spaces**
   1. [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search)
2. **Lookup Spaces**
   1. [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)
   2. [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)
   3. [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)
   4. [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)
   5. [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids)

### 1.2.4. Lists Service

1. **Lookup Lists**
   1. [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)
   2. [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists)
2. **Pinnings**
   1. [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id)
   2. [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)
   3. [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)
3. **Tweet Lookup**
   1. [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets)
4. **Manage**
   1. [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id)
   2. [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)
   3. [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)
5. **Follows**
   1. [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id)
   2. [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)
   3. [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)
   4. [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)
6. **Members**
   1. [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id)
   2. [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)
   3. [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)
   4. [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)

### 1.2.5. Compliance Service

1. **Batch Compliance**
   1. [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)
   2. [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id)
   3. [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)

> **Note**</br>
> Not all additional fields listed in the official documentation are supported. We intend to support them step by step.</br>
> Also you can create an Issue or Pull Request if you wish to suggest or contribute!

## 1.3. Tips

### 1.3.1. Method Names

`twitter_api_v2` uses the following standard prefixes depending on endpoint characteristics. It's very easy to use `twitter_api_v2` to find the method corresponding to the endpoint you want to use!

- **lookup**
  - This prefix is attached to the endpoint performing the search.
  - However, it's distinguished from the higher-performance Search endpoint.
- **create**
  - This prefix is attached to the endpoint performing the create state such as `Tweet` and `Follow`.
- **destroy**
  - This prefix is attached to the endpoint performing the destroy state such as `Tweet` and `Follow`.
- **search**
  - This prefix is attached to high-performance Search endpoints.
- **count**
  - This prefix is attached to the endpoint that counts tweets, etc.
- **update**
  - This prefix is attached to the endpoint performing the update state.
- **connect**
  - This prefix is attached to the endpoint performing the high-performance streaming.

### 1.3.2. Generate App-Only Bearer Token

`twitter_api_v2` provides utility to generate/find your app-only bearer token.

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

### 1.3.3. Null Parameter at Request

In this library, parameters that are not required at request time, i.e., optional parameters, are defined as nullable.
However, developers do not need to be aware of the null parameter when sending requests when using this library.

It means the parameters specified with a null value are safely removed and ignored before the request is sent.

For example, arguments specified with null are ignored in the following request.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    // These parameters are ignored at request because they are null.
    mediaIds: null,
    expansions: null,
  );
}
```

## 1.4. Contribution

If you would like to contribute to `twitter_api_v2`, please create an [issue](https://github.com/twitter-dart/twitter-api-v2/issues) or create a Pull Request.

There are many ways to contribute to the OSS. For example, the following subjects can be considered:

- There are request parameters or response fields that are not implemented.
- Documentation is outdated or incomplete.
- Have a better way or idea to achieve the functionality.
- etc...

You can see more details from resources below:

- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

Or you can create a [discussion](https://github.com/twitter-dart/twitter-api-v2/discussions) if you like.

**Feel free to join this development, diverse opinions make software better!**

## 1.5. Support

The simplest way to show us your support is by **giving the project a star** at [GitHub](https://github.com/twitter-dart/twitter-api-v2) and [Pub.dev](https://pub.dev/packages/twitter_api_v2).

You can also support this project by **becoming a sponsor** on GitHub:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

You can also show on your repository that your app is made with `twitter_api_v2` by using one of the following badges:

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.6. License

All resources of `twitter_api_v2` is provided under the `BSD-3` license.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **Note**</br>
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.7. More Information

`twitter_api_v2` was designed and implemented by **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [Release Note](https://github.com/twitter-dart/twitter-api-v2/releases)
- [Bug Report](https://github.com/twitter-dart/twitter-api-v2/issues)
