<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="600px" src="https://user-images.githubusercontent.com/13072231/199728866-202b9742-d58e-4667-b046-e8096efd2339.png">
  </a>
</p>
<p align="center">
  <b>最强大的 Dart/Flutter Twitter API v2.0 开发库🐦</b>
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

| [English](https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md)| [日本語](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-JA.md) | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | [Tiếng Việt](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-VI.md) | [বাংলা](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-BN.md) | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | [Deutsch](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-DE.md) | [Português](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-PT.md) | 简体中文 |

---

<!-- TOC -->

- [1. 向导 🌎](#1-向导-)
  - [1.1. 功能 💎](#11-功能-)
  - [1.2. 开始 ⚡](#12-开始-)
    - [1.2.1. 安装库](#121-安装库)
    - [1.2.2. 导入](#122-导入)
    - [1.2.3. 示例代码](#123-示例代码)
  - [1.3. 接口 👀](#13-接口-)
    - [1.3.1. 推文服务](#131-推文服务)
      - [1.3.1.1. 发推](#1311-发推)
      - [1.3.1.2. 喜欢❤](#1312-喜欢)
      - [1.3.1.3. 转推](#1313-转推)
      - [1.3.1.4. 引用推文](#1314-引用推文)
      - [1.3.1.5. 搜索](#1315-搜索推文)
      - [1.3.1.6. 查找推文](#1316-查找推文)
      - [1.3.1.7. 推文计数](#1317-推文计数)
      - [1.3.1.8. 收藏](#1318-收藏)
      - [1.3.1.9. 时间线](#1319-时间线)
      - [1.3.1.10. 隐藏回复](#13110-隐藏回复)
      - [1.3.1.11. Volume流](#13111-volume流)
      - [1.3.1.12. Filtered流](#13112-filtered流)
    - [1.3.2. 用户服务](#132-用户服务)
      - [1.3.2.1. 关注](#1321-关注)
      - [1.3.2.2. 查找用户](#1322-查找用户)
      - [1.3.2.3. 静音用户](#1323-静音用户)
      - [1.3.2.4. 拉黑](#1324-拉黑)
      - [1.3.2.5. 个人资料](#1325-个人资料)
      - [1.3.2.6. 举报](#1326-举报)
    - [1.3.3. 空间服务](#133-空间服务)
      - [1.3.3.1. 搜索空间](#1331-搜索空间)
      - [1.3.3.2. 查找空间](#1332-查找空间)
    - [1.3.4. 列表服务](#134-列表服务)
      - [1.3.4.1. 查找列表](#1341-查找列表)
      - [1.3.4.2. 置顶](#1342-置顶)
      - [1.3.4.3. 推文查找](#1343-推文查找)
      - [1.3.4.4. 管理列表](#1344-管理列表)
      - [1.3.4.5. 关注](#1345-关注)
      - [1.3.4.6. 成员](#1346-成员)
    - [1.3.5. 媒体服务](#135-媒体服务)
      - [1.3.5.1. 上传](#1351-上传)
    - [1.3.6. 消息事件服务](#136-消息事件服务)
      - [1.3.6.1. 查找事件](#1361-查找事件)
      - [1.3.6.2. 管理事件](#1362-管理事件)
    - [1.3.7. 地理服务](#137-地理服务)
      - [1.3.7.1. 查找地点](#1371-查找地点)
      - [1.3.7.2. 搜索地点](#1372-搜索地点)
    - [1.3.8. 趋势服务](#138-趋势服务)
      - [1.3.8.1. 趋势地点](#1381-趋势地点)
      - [1.3.8.2. 趋势](#1382-趋势)
    - [1.3.9. 合规服务](#139-合规服务)
      - [1.3.9.1. 批次合规](#1391-批次合规)
  - [1.4. 提示 🏄](#14-提示-)
    - [1.4.1. 方法名](#141-方法名)
    - [1.4.2. 自动解析的Rest客户端](#142-自动解析的Rest客户端)
    - [1.4.3. 生成App专用的令牌](#143-生成App专用的令牌)
    - [1.4.4. 刷新令牌](#144-刷新令牌)
    - [1.4.5. 请求空参数](#145-请求空参数)
    - [1.4.6. 用`expansions`扩展字段](#146-用expansions扩展字段)
    - [1.4.7. 用`fields`扩展字段](#147-用fields扩展字段)
    - [1.4.8. JSON序列化和反序列化](#148-json序列化和反序列化)
    - [1.4.9. 2.0版OAuth PKCE代码流](#149-2.0版oauth-pkce代码流)
    - [1.4.10. 更改超时时间](#1410-更改超时时间)
    - [1.4.11. 自动重试](#1411-自动重试)
      - [1.4.11.1. 指数退避和抖动](#14111-指数退避和抖动)
      - [1.4.11.2. 重试的时候做点什么](#14112-重试的时候做点什么)
    - [1.4.12. 异常抛出](#1412-异常抛出)
    - [1.4.13. 上传多媒体](#1413-上传多媒体)
    - [1.4.14. 检查多媒体上传进度](#1414-检查多媒体上传进度)
    - [1.4.15. 生成过滤规则](#1415-生成过滤规则)
  - [1.5. 贡献 🏆](#15-贡献-)
  - [1.6. 贡献者✨](#16-贡献者-)
  - [1.7. 支持 ❤️](#17-支持-️)
  - [1.8. 协议 🔑](#18-协议-)
  - [1.9. 更多信息🧐](#19-更多信息-)

<!-- /TOC -->

# 1. 向导 🌎

本库旨在提供最简单的方法来调用 [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) 。

**如果你喜欢本仓库，请标记一下⭐。**

当使用推特授权API的时候，我们也提供了官方 [OAuth 2.0 PKCE authentication](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) API的封装版 [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce) 。

当然，我们的仓库也在 [官方的推荐列表](https://developer.twitter.com/en/docs/twitter-api/tools-and-libraries/v2#dart) 🐦中。

## 1.1. 功能 💎

✅ **[Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api)** 的封装库。</br>
✅ **很容易集成** 到 **Dart** & **Flutter** 程序中。 </br>
✅ 响应的对象是绝对的**安全类型**。 </br>
✅ 支持 **[所有接口](https://developer.twitter.com/en/docs/api-reference-index)**。 </br>
✅ 支持**所有的请求参数和相应字段**。</br>
✅ 支持**高性能流**接口。</br>
✅ 支持 **[扩展](https://developer.twitter.com/en/docs/twitter-api/expansions)** 和**[字段](https://developer.twitter.com/en/docs/twitter-api/fields)** 。 </br>
✅ **完善的文档** 并且 **经过测试验证**。</br>
✅ 支持**自动重试**。</br>
✅ 支持 **大媒体上传（图像，动图，视频）**。</br>
✅ 支持 **强大的分页功能**。

## 1.2. 开始 ⚡

### 1.2.1. 安装库

**使用 Dart:**

```bash
 dart pub add twitter_api_v2
```

**或者 Flutter:**

```bash
 flutter pub add twitter_api_v2
```

### 1.2.2. 导入

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.2.3. 示例代码

```dart
import 'dart:async';
import 'dart:io';

import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  //! 你需要在 https://developer.twitter.com 申请keys和tokens
  final twitter = v2.TwitterApi(
    //! 默认是2.0版本的OAuth。
    //!
    //! 注意：发推、喜欢、需要特定的用户权限，你需要OAuth2.0 PKCE授权。
    //!
    //! 获取授权最简单的方法就是使用OAuth 2.0 PKCE的封装库.
    //! [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce)!
    bearerToken: '你的Token',

    //! 或者你想用旧版本1.0授权。
    //! 你可以用下面的方法获取1.0授权。
    //!
    //! 注意，1.0版本授权可能不适用某些接口。
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),

    //! 当网络错误或者服务器错误的时候，本库提供了自动重试机制。
    retryConfig: v2.RetryConfig(
      maxAttempts: 5,
      onExecute: (event) => print(
        'Retry after ${event.intervalInSeconds} seconds... '
        '[${event.retryCount} times]',
      ),
    ),

    //! 默认是超时时间是10秒。
    timeout: Duration(seconds: 20),
  );

  try {
    //! 获取授权用户信息。
    final me = await twitter.users.lookupMe();
    //! 通过关键字搜索推文。
    final tweets = await twitter.tweets.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // 扩展搜索结果。
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
      tweetFields: [
        v2.TweetField.conversationId,
        v2.TweetField.publicMetrics,
        v2.TweetField.editControls,
      ],
      userFields: [
        v2.UserField.location,
        v2.UserField.verified,
        v2.UserField.entities,
        v2.UserField.publicMetrics,
      ],

      //! 分页功能。
      paging: (event) {
        print(event.response);

        if (event.count == 3) {
          return v2.ForwardPaginationControl.stop();
        }

        return v2.ForwardPaginationControl.next();
      },
    );

    //! 序列化 & 反序列化 JSON。
    final tweetJson = tweets.data.first.toJson();
    final tweet = v2.TweetData.fromJson(tweetJson);
    print(tweet);

    await twitter.tweets.createLike(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    //! 上传图片、动图、视频。
    final uploadedMedia = await twitter.media.uploadMedia(
      file: File.fromUri(Uri.file('FILE_PATH')),
      altText: 'This is alt text.',

      //! 查看上传进度。
      onProgress: (event) {
        switch (event.state) {
          case v2.UploadState.preparing:
            print('Upload is preparing...');
            break;
          case v2.UploadState.inProgress:
            print('${event.progress}% completed...');
            break;
          case v2.UploadState.completed:
            print('Upload has completed!');
            break;
        }
      },
      onFailed: (error) => print('Upload failed due to "${error.message}"'),
    );

    //! 发表图文推特。
    await twitter.tweets.createTweet(
      text: 'Tweet with uploaded media',
      media: v2.TweetMediaParam(
        mediaIds: [uploadedMedia.data.id],
      ),
    );

    //! 高性能流接口。
    final sampleStream = await twitter.tweets.connectSampleStream();
    await for (final response in sampleStream.stream.handleError(print)) {
      print(response);
    }

    //! 高性能过滤流。
    await twitter.tweets.createFilteringRules(
      rules: [
        v2.FilteringRuleParam(value: '#ElonMusk'),

        //! 使用 "FilteringRule" 过滤结果。
        v2.FilteringRuleParam(
          //! => #Tesla has:media
          value: v2.FilteringRule.of()
              .matchHashtag('Tesla')
              .and()
              .matchTweetContainsMedia()
              .build(),
        ),
        v2.FilteringRuleParam(
          //! => (#SpaceX has:media) OR (#SpaceX has:hashtags) sample:50
          value: v2.FilteringRule.ofSample(percent: 50)
              .group(
                v2.FilteringRule.of()
                    .matchHashtag('SpaceX')
                    .and()
                    .matchTweetContainsMedia(),
              )
              .or()
              .group(
                v2.FilteringRule.of()
                    .matchHashtag('SpaceX')
                    .and()
                    .matchTweetContainsHashtags(),
              )
              .build(),
        ),
      ],
    );

    final filteredStream = await twitter.tweets.connectFilteredStream();
    await for (final response in filteredStream.stream.handleError(print)) {
      print(response.data);
      print(response.matchingRules);
    }
  } on TimeoutException catch (e) {
    print(e);
  } on v2.UnauthorizedException catch (e) {
    print(e);
  } on v2.RateLimitExceededException catch (e) {
    print(e);
  } on v2.DataNotFoundException catch (e) {
    print(e);
  } on v2.TwitterUploadException catch (e) {
    print(e);
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.body);
    print(e);
  }}
```

## 1.3. 接口 👀

### 1.3.1. 推特服务

#### 1.3.1.1. 发推

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets) | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html) |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.3.1.2. 喜欢❤

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes) | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html) |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html) |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users) | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets) | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.3.1.3. 转推

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets) | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html) |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html) |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by) | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.3.1.4. 引用推文

| Endpoint                                                     | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.3.1.5. 搜索

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all) | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html) |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.3.1.6. 查找推文

| 接口                                                         | Method Name                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets) | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |

#### 1.3.1.7. 推文计数

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all) | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html) |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.3.1.8. 收藏

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks) | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html) |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks) | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.3.1.9. 时间线

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions) | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html) |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html) |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.3.1.10. 隐藏回复

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html) |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.3.1.11. Volume流

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectSampleStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectSampleStream.html) |
| [GET /2/tweets/sample10/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample10-stream) | [connectSample10Stream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectSample10Stream.html) |

#### 1.3.1.12. Filtered流

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html) |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules) | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html) |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream) | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.3.2. 用户服务

#### 1.3.2.1. 关注

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following) | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html) |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html) |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers) | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html) |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following) | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.3.2.2. 查找用户

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users) | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html) |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html) |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by) | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html) |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me) | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html) |

#### 1.3.2.3. 静音用户

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting) | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html) |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html) |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting) | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.3.2.4. 拉黑

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking) | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html) |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html) |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking) | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

#### 1.3.2.5. 个人资料

> **注意**</br>
> 现在用的是1.1版本的接口，因为官方还没发布管理个人资料的2.0接口。因此后续可能会有变动。

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /1.1/account/update_profile.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/post-account-update_profile) | [updateProfile](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/updateProfile.html) |
| [POST /1.1/account/update_profile_image.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/post-account-update_profile_image) | [updateProfileImage](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/updateProfileImage.html) |
| [POST /1.1/account/update_profile_banner.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/post-account-update_profile_banner) | [updateProfileBanner](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/updateProfileBanner.html) |
| [POST /1.1/account/remove_profile_banner.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/post-account-remove_profile_banner) | [destroyProfileBanner](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyProfileBanner.html) |
| [GET users/profile_banner.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/get-users-profile_banner) | [lookupProfileBannerById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupProfileBannerById.html) |
| [GET users/profile_banner.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/get-users-profile_banner) | [lookupProfileBannerByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupProfileBannerByName.html) |

#### 1.3.2.6. 举报

> **注意**</br>
> 现在用的是1.1版本的接口，因为官方还没发布举报的2.0接口。因此后续可能会有变动。

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /1.1/users/report_spam.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/mute-block-report-users/api-reference/post-users-report_spam) | [createReportById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createReportById.html) |
| [POST /1.1/users/report_spam.json](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/mute-block-report-users/api-reference/post-users-report_spam) | [createReportByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createReportByName.html) |

### 1.3.3. 空间服务

#### 1.3.3.1. 搜索空间

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.3.3.2. 查找空间

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces) | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html) |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html) |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers) | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html) |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html) |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.3.4. 列表服务

#### 1.3.4.1. 查找列表

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html) |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.3.4.2. 置顶

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists) | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html) |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists) | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.3.4.3. 推文查找

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.3.4.4. 管理列表

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists) | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html) |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists) | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html) |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html) |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id) | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html) |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id) | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.3.4.5. 关注

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists) | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html) |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html) |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers) | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html) |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists) | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.3.4.6. 成员

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members) | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html) |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html) |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members) | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html) |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members) | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.3.5. 媒体服务

> **注意**</br>
> 现在用的是1.1版本的接口，因为官方还没发布媒体服务的2.0接口。因此后续可能会有变动。

#### 1.3.5.1. 上传

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /1.1/media/upload.json](https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload) | [uploadImage](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/MediaService/uploadImage.html) |
| [POST /1.1/media/upload.json (INIT)](https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-init)</br>[POST /1.1/media/upload.json (APPEND)](https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-append)</br>[POST /1.1/media/upload.json (FINALIZE)](https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/post-media-upload-finalize)</br>[POST /1.1/media/upload.json (STATUS)](https://developer.twitter.com/en/docs/twitter-api/v1/media/upload-media/api-reference/get-media-upload-status)</br> | [uploadMedia](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/MediaService/uploadMedia.html) |

### 1.3.6. 事件消息服务

#### 1.3.6.1. 查找事件

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /2/dm_events](https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_events) | [lookupEvents](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/dm_events.html) |
| [GET /2/dm_conversations/with/:participant_id/dm_events](https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_conversations-with-participant_id-dm_events) | [lookupEventsWith](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/lookupEventsWith.html) |
| [GET /2/dm_conversations/:dm_conversation_id/dm_events](https://developer.twitter.com/en/docs/twitter-api/direct-messages/lookup/api-reference/get-dm_conversations-dm_conversation_id-dm_events) | [lookupEventsIn](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/lookupEventsIn.html) |

#### 1.3.6.2. 管理事件

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/dm_conversations/with/:participant_id/messages](https://developer.twitter.com/en/docs/twitter-api/direct-messages/manage/api-reference/post-dm_conversations-with-participant_id-messages) | [createConversation](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/createConversation.html) |
| [POST /2/dm_conversations](https://developer.twitter.com/en/docs/twitter-api/direct-messages/manage/api-reference/post-dm_conversations) | [createGroupConversation](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/createGroupConversation.html) |
| [POST /2/dm_conversations/:dm_conversation_id/messages](https://developer.twitter.com/en/docs/twitter-api/direct-messages/manage/api-reference/post-dm_conversations-dm_conversation_id-messages) | [createMessage](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/DirectMessagesService/createMessage.html) |

### 1.3.7. 地理服务

> **注意**</br>
> 现在用的是1.1版本的接口，因为官方还没发布地理服务的2.0接口。因此后续可能会有变动。

#### 1.3.7.1. 查找地点

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| GET /1.1/geo/id/:placeId.json                                | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/GeoService/lookupById.html) |
| [GET /1.1/geo/reverse_geocode.json](https://developer.twitter.com/en/docs/twitter-api/v1/geo/places-near-location/api-reference/get-geo-reverse_geocode) | [lookupReverseGeocodedLocations](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/GeoService/lookupReverseGeocodedLocations.html) |

#### 1.3.7.2. 搜索地点

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /1.1/geo/search.json](https://developer.twitter.com/en/docs/twitter-api/v1/geo/places-near-location/api-reference/get-geo-search) | [searchLocations](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/GeoService/searchLocations.html) |

### 1.3.8. 趋势服务

> **注意**</br>
> 现在用的是1.1版本的接口，因为官方还没发布管理趋势服务的2.0接口。因此后续可能会有变动。

#### 1.3.8.1. 趋势地点

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /1.1/trends/available.json](https://developer.twitter.com/en/docs/twitter-api/v1/trends/locations-with-trending-topics/api-reference/get-trends-available) | [searchAvailableLocations](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TrendsService/searchAvailableLocations.html) |
| [GET /1.1/trends/closest.json](https://developer.twitter.com/en/docs/twitter-api/v1/trends/locations-with-trending-topics/api-reference/get-trends-closest) | [searchClosestLocations](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TrendsService/searchClosestLocations.html) |

#### 1.3.8.2. 趋势

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GET /1.1/trends/place.json](https://developer.twitter.com/en/docs/twitter-api/v1/trends/trends-for-location/api-reference/get-trends-place) | [lookupTrends](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TrendsService/lookupTrends.html) |

### 1.3.9. 合规服务

#### 1.3.9.1. 批次合规

| 接口                                                         | 方法                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs) | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html) |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs) | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html) |

## 1.4. 提示 🏄

### 1.4.1. 方法名

**twitter_api_v2** 使用了接口的标准前缀，你可以很容易找到你想要的接口！

| 前缀        | 描述                   |
| ----------- | ---------------------- |
| **lookup**  | 查找推文、用户相关     |
| **search**  | 广泛搜索相关           |
| **connect** | 高性能流相关           |
| **count**   | 统计指定的项           |
| **create**  | 发表推文、关注某人相关 |
| **destroy** | 删除推文、取关某人相关 |
| **update**  | 更新状态相关           |
| **upload**  | 上传相关               |

### 1.4.2. 自动解析的Rest客户端

某些 **Twitter API v2.0** 接口内部是支持1.0a。

**twitter_api_v2** 提供了根据状态和令牌token自动解析的Rest客户端。

具体解析规则如下。

- **V2接口：**

| **When**                   | **bearerToken.isEmpty** | **bearerToken.isNotEmpty** |
| -------------------------- | :---------------------: | :------------------------: |
| **oauthTokens.isEmpty**    |  UnauthorizedException  |         OAuth 2.0          |
| **oauthTokens.isNotEmpty** |       OAuth 1.0a        |         OAuth 2.0          |

- **V1接口：**

| **When**                   | **bearerToken.isEmpty** | **bearerToken.isNotEmpty** |
| -------------------------- | :---------------------: | :------------------------: |
| **oauthTokens.isEmpty**    |  UnauthorizedException  |   UnauthorizedException    |
| **oauthTokens.isNotEmpty** |       OAuth 1.0a        |         OAuth 1.0a         |

### 1.4.3. 生成App专用的令牌

**twitter_api_v2** 可以生辰App专用令牌。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final bearerToken = await v2.OAuthUtils.generateAppOnlyBearerToken(
    consumerKey: 'YOUR_CONSUMER_KEY',
    consumerSecret: 'YOUR_CONSUMER_SECRET',
  );

  print(bearerToken);
}
```

### 1.4.4. 刷新令牌

**OAuth 2.0 PKCE**不仅安全，并且可以选择用户的权限。但是这个令牌会在2小时以后过期。

但是，你可以用 `refresh token` 来解决问题。`Refresh token` 可以用来刷新令牌以获取新的令牌。

示例代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final response = await v2.OAuthUtils.refreshAccessToken(
    clientId: 'YOUR_CLIENT_ID',
    clientSecret: 'YOUR_CLIENT_SECRET',
    refreshToken: 'REFRESH_TOKEN_YOU_GOT',
  );

  print(response.accessToken);
  print(response.refreshToken);
}
```

> **注意**：</br>
> 推荐使用 **[twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce)** 以获取授权。</br>
> 通过指定 **offline.access**，`refresh token` 是和 `access token`一起返回。

### 1.4.5. 请求空参数

一些请求时的不是必选的参数，比如可选参数，是默认定义为空。因此，在发送请求时，不必太在意这些参数。这些参数可以安全的删除或者忽略。

例如，下面的请求一些参数就是空。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweets.createTweet(
    text: 'Hello, World!',
    // 因为这些参数是空，所以在请求时会被忽略。
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.4.6. 用`expansions`来扩展字段

例如，当数据仅包含一个ID，但是你想获取和ID关联的数据。这个时候，`Twitter API v2.0` 中的 `expansions` 起l了作用，并且我们的库支持此扩展。

请求的接口，比如`查找`和`搜索`，可以使用扩展。一个字段可能也包含在[TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html)。

示例代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweets.searchRecent(
      query: '#ElonMusk',
      // 指定字段
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

你可以在[官方文档](https://developer.twitter.com/en/docs/twitter-api/expansions)查找`扩展`的更多详细说明。

### 1.4.7. 用`field`扩展字段

`Twitter API v2.0` 支持一个很有趣的设定，他允许用户根据接口使用情况控制返回数据的个数。他就是 `字段`，我们的库也支持。

请求的接口，比如`查找`和`搜索`，可以使用扩展。一个字段可能也包含在[TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html)。

示例代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweets.searchRecent(
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

> **注意**</br>
> 一些字段需要搭配`扩展`使用。

你可以在[官方文档](https://developer.twitter.com/en/docs/twitter-api/fields)中查看更多关于`字段`的说明。

### 1.4.8. JSON序列化和反序列化

所有使用推特**twitter_api_v2**接口的响应数据都是存储在安全的对象中。但是， 当和其他库搭配使用的时候，推特接口可能返回原始的JSON数据。

这种情况下，你可以使用`TwitterResponse`中的 **`toJson`** 方法，或者其他转实体的方法。

**`toJson`** 方法转换的JSON文件和**Twitter API提供的转JSON完全相等**，还可以用**`fromJson`**反序列化。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_BEARER_TOKEN');

  try {
    final response = await twitter.tweets.searchRecent(
      query: '#ElonMusk',
      maxResults: 10,
      expansions: v2.TweetExpansion.values,
    );

    //! 获取原始JSON.
    print(response.toJson());

    //! 从指定对象获取原始JSON
    print(response.data.first.toJson());
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

也可以这样写：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_BEARER_TOKEN');

  try {
    final response = await twitter.tweets.searchRecent(
      query: '#ElonMusk',
      maxResults: 10,
      expansions: v2.TweetExpansion.values,
    );

    //! 序列化和反序列化
    final tweetJson = response.data.first.toJson();
    final tweet = v2.TweetData.fromJson(tweetJson);

    print(tweet);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

### 1.4.9. 2.0版OAuth PKCE 代码流

**Twitter API v2.0** 支持使用 [OAuth 2.0 PKCE](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) 授权，并允许App使用 **Twitter API v2.0** 来申请最小操作[范围](https://developer.twitter.com/en/docs/authentication/guides/v2-authentication-mapping)的授权。

由于 **OAuth2.0 PKCE** 是通过浏览器授权的，**twitter_api_v2** 不提供控制台适配。但是我们创建了[twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce)，用来适配Flutter应用程序。

**twitter_oauth2_pkce** 是100%和 **twitter_api_v2** 兼容。你可以参考下面的链接：

- [Repository](https://github.com/twitter-dart/twitter-oauth2-pkce)
- [Pub.dev](https://pub.dev/packages/twitter_oauth2_pkce)

请参考下面的程序。

- [Example Tweet App](https://github.com/twitter-dart/example-tweet-app-with-twitter-api-v2)

### 1.4.10. 更改超时时间

本库所有的API请求默认超时时间是10秒。

不过，你有时候可能想自己指定。那么可以参考下面的代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() {
 final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! 默认是10秒
    timeout: Duration(seconds: 5),
  );
}
```

### 1.4.11. 自动重试

由于需要和外部系统通讯，不可避免的通讯失败或者服务器宕机会导致请求超时。此时，一个有效的措施是每隔一段时间重新发送以下请求。因此，**twitter_api_v2**提供了**自动重试**机制。

此机制使用下列场景：

- 当服务器返回 `500` 或者`503`。
- 当网络短暂丢失，抛出`Socket`异常。
- 当通讯超时，抛出`Timeout`异常。

#### 1.4.11.1. 指数退避和抖动

执行自动重试的最简单方法是在特定时间停止进程并重新运行直到成功。 然而，如果Twitter的服务器出现网络中断，同时向特定服务器发送多个请求可能会进一步使请求发送到的服务器过载，并进一步降低重试尝试的成功率。

这个问题可以通过指数数并添加一个称为**Jitter**的随机数来解决，这种方法称为**Exponential BackOff and Jitter**算法。 通过在指数增长的重试间隔中添加随机数，可以更灵活地分配重试间隔。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: v2.RetryConfig(
      maxAttempts: 3,
    ),
  );
}
```

> 在上述实现中，对于每个带有抖动的重试计数，间隔呈指数增加。 可以用下式来表示。
>
> > **(2 ^ retryCount) + jitter(0 ~ 3 之间的随机数)**

#### 1.4.11.2. 重试的时候做点什么

在重试的时候，输出日志或者通知用户是很有必要的。因此 **twitter_api_v2** 提供了在重试时候的回调。

示例代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    retryConfig: v2.RetryConfig(
      maxAttempts: 3,

      //! Add this line.
      onExecute: (event) => print('Retrying... ${event.retryCount} times.'),
    ),
  );
}
```

传递给回调的 [RetryEvent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/RetryEvent-class.html) 包含有关重试的信息。

### 1.4.12. 异常抛出

**twitter_api_v2** 提供的非常方便的异常对象，已处理来自 [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) 的异常响应。

| 异常                                                         | 描述                                     |
| ------------------------------------------------------------ | ---------------------------------------- |
| [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html) | 最基础的异常，例如搜索已经删除的推文等。 |
| [TwitterUploadException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterUploadException-class.html) | 上传多媒体时发生的异常。                 |
| [UnauthorizedException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/UnauthorizedException-class.html) | 使用access token发生的授权异常。         |
| [RateLimitExceededException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/RateLimitExceededException-class.html) | 超出请求频率限制异常。                   |
| [DataNotFoundException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/DataNotFoundException-class.html) | 数据体中没有数据的异常。                 |

上面 **twitter_api_v2** 的所有异常都继承自 [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html)。也就是说，你可以认为所有的异常都是 [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html)，或者你可以根据情况而定。

注意，如果你收到一个独立的类型异常，一定要在 [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html) 之前处理。 否则就会被认定为 [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html)。

因此，如果需要捕获特定的异常，一定要在最后捕获 [TwitterException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterException-class.html) 。

示例代码：

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweets.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
    );

    print(tweets);
  } on v2.UnauthorizedException catch (e) {
    print(e);
  } on v2.RateLimitExceededException catch (e) {
    print(e);
  } on v2.DataNotFoundException catch (e) {
    print(e);
  } on v2.TwitterUploadException catch (e) {
    print(e);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

### 1.4.13. 上传多媒体

上传多媒体，和不同的人分享是一件非常有意思的事。从商业的角度讲，伴随媒体发布推文将吸引人们更多的兴趣。

**twitter_api_v2** 为这一高需求提供了强有力的支持。你只需要准备上传的多媒体文件、传给指定的方法即可。下面的方法可供参考。

| 方法名                                                       | 描述                                                   |
| ------------------------------------------------------------ | ------------------------------------------------------ |
| [uploadImage](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/MediaService/uploadImage.html) | 较小容量的图片，比如PNG和GIF。                         |
| [uploadMedia](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/MediaService/uploadMedia.html) | 除了图片，你还可以上传大文件，比如视频**（推荐使用）** |

**以上两种方法都很简单**

所有困难的上传过程都被封装起来，并且如前所述，你所要做的就是将准备好的多媒体文件传递给该方法。例如，如果您想将大视频上传到 Twitter，您可以执行以下操作。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'NO_NEED_BEARER_TOKEN_BECAUSE_IT_IS_V1.1_ENDPOINT',

    //! You need to set OAuth 1.0a tokens,
    //! because this is the v1.1 endpoint.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    final uploadedResponse = await twitter.media.uploadMedia(
      file: File.fromUri(
        Uri.file('FILE_PATH'),
      ),
    );

    print(uploadedResponse);
  } on v2.TwitterUploadException catch (e) {
    print(e);
  }
}
```

此上传过程非常安全，但请注意，如果指定 Twitter 不支持的格式的媒体，将抛出 [TwitterUploadException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterUploadException-class.html)。

> **注意**</br>
> 在twitter_api_v2中，我们使用了v1.1的接口。因为v2.0接口还不支持上传多媒体文件。虽然我试图在未来尽可能保持实现的无中断性，但当官方 Twitter API v2.0 支持媒体上传时，到时候接口可能会发生变化。

### 1.4.14. 检查多媒体上传进度

上传小的图片不会占用太长时间，但是上传视频可能需要一段时间。此时，给用户展示进度是非常友好的行为。

**twitter_api_v2** 支持进度查看，参考下面的代码。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'NO_NEED_BEARER_TOKEN_BECAUSE_IT_IS_V1.1',

    //! You need to set OAuth 1.0a tokens,
    //! because this is the v1.1 endpoint.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    final uploadedResponse = await twitter.media.uploadMedia(
      file: File.fromUri(
        Uri.file('FILE_PATH'),
      ),

      //! Add this callback function.
      onProgress: (event) {
        switch (event.state) {
          case v2.UploadState.preparing:
            print('Upload is preparing...');
            break;
          case v2.UploadState.inProgress:
            print('${event.progress}% completed...');
            break;
          case v2.UploadState.completed:
            print('Upload has completed!');
            break;
        }
      },
    );

    print(uploadedResponse);
  } on v2.TwitterUploadException catch (e) {
    print(e);
  }
}
```

通过给 `uploadMedia` 指定 `onProgress` 回调，你可以增加进度。

传给回调的参数是 `UploadEvent` 对象，他包含**状态**和**上传进度**。

上传包含三种状态，上传的时候由上倒下依次变换。

| 状态           | 描述                                                         |
| -------------- | ------------------------------------------------------------ |
| **preparing**  | 表示开始上传，直到上传的媒体发送到推特服务器，此过程中进度一直是0。 |
| **inProgress** | 表示上传的媒体已经在推特服务器上开始处理，该库定期轮询推特服务器以获取媒体上传的进度。 |
| **completed**  | 表示媒体已经上传成功。                                       |

调用`onProgress`回调的触发器如下。但如果媒体上传很快完成并且不需要轮询，则不会出现“inProgress”状态。

1. 当上传状态变为`preparing`时（**始终在处理开始时调用一次**）
2. 当上传状态变为`inProgress`时（**每次轮询，不需要轮询则不会调用**）
3. 当上传状态变为`completed`时（**总是在处理结束时调用一次**）

请注意，媒体上传也可能因媒体损坏等原因而失败。在这种情况下，总是会抛出  [TwitterUploadException](https://pub.dev/documentation/twitter_api_core/latest/twitter_api_core/TwitterUploadException-class.html) 。

### 1.4.15. 生成过滤规则

一些 [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) 接口支持高级搜索的操作，不仅仅是 `keywords` 、`hashtags`。

- [Filtered Stream: Build a Rule](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/integrate/build-a-rule)

例如，想获取"#ElonMusk"的话题，并且推文是英文的时候，可以用下面的规则：

- `#ElonMusk lang:en`

乍一看比较简单，但是由于操作符过多，参考手册是意见非常痛苦的事情。并且过滤规则还有指定的语法，手动输入还有可能出错。

因此， [twitter_api_v2](https://github.com/twitter-dart/twitter-api-v2) 提供了可以安全切简单的实现 [过滤规则](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/FilteringRule-class.html) 。

刚才的例子可以用下面的实现。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() {
  final rule = v2.FilteringRule.of()
      .matchHashtag('ElonMusk')
      .and()
      .matchLanguage(v2.Language.english);

  // -> #ElonMusk lang:en
  print(rule.build());
}
```

好了，这个功能的说明不是一个简单的 `README` 能描述清楚的。因此，我创建了一个说明文档，可供参考。

- [上手过滤规则](https://github.com/twitter-dart/twitter-api-v2/tree/main/doc/getting-started-with-filtering-rule-object.md)

## 1.5. 贡献🏆

如果你想贡献 **twitter_api_v2**，请创建一个 [议题](https://github.com/twitter-dart/twitter-api-v2/issues) 或者PR。

有很多贡献的方法，比如，你可以考虑下面的主题：

- 请求的参数或者相应字段未实现。
- 文档过时或者不完整。
- 更好的方法实现某个功能。
- 等等...

这里你可以看到更多：

- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

或者创建一个 [讨论](https://github.com/twitter-dart/twitter-api-v2/discussions) 。

**不要拘束，自由讨论技术，因为不同的观点才能让我们的软件往更好的方向发展！**

## 1.6. 贡献者 ✨

对以下的人表示致谢 ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/myConsciousness"><img src="https://avatars.githubusercontent.com/u/13072231?v=4?s=100" width="100px;" alt="Kato Shinya / 加藤 真也"/><br /><sub><b>Kato Shinya / 加藤 真也</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Code">💻</a> <a href="#content-myConsciousness" title="Content">🖋</a> <a href="#data-myConsciousness" title="Data">🔣</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Documentation">📖</a> <a href="#design-myConsciousness" title="Design">🎨</a> <a href="#example-myConsciousness" title="Examples">💡</a> <a href="#fundingFinding-myConsciousness" title="Funding Finding">🔍</a> <a href="#ideas-myConsciousness" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-myConsciousness" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-myConsciousness" title="Maintenance">🚧</a> <a href="#mentoring-myConsciousness" title="Mentoring">🧑‍🏫</a> <a href="#projectManagement-myConsciousness" title="Project Management">📆</a> <a href="#question-myConsciousness" title="Answering Questions">💬</a> <a href="https://github.com/twitter-dart/twitter-api-v2/pulls?q=is%3Apr+reviewed-by%3AmyConsciousness" title="Reviewed Pull Requests">👀</a> <a href="#security-myConsciousness" title="Security">🛡️</a> <a href="#translation-myConsciousness" title="Translation">🌍</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Tests">⚠️</a> <a href="#tutorial-myConsciousness" title="Tutorials">✅</a></td>
      <td align="center"><a href="https://github.com/andypiper"><img src="https://avatars.githubusercontent.com/u/552452?v=4?s=100" width="100px;" alt="Andy Piper"/><br /><sub><b>Andy Piper</b></sub></a><br /><a href="#content-andypiper" title="Content">🖋</a> <a href="#talk-andypiper" title="Talks">📢</a></td>
      <td align="center"><a href="https://github.com/XRayAdamo"><img src="https://avatars.githubusercontent.com/u/4430621?v=4?s=100" width="100px;" alt="Konstantin"/><br /><sub><b>Konstantin</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Code">💻</a> <a href="#design-XRayAdamo" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Documentation">📖</a> <a href="#example-XRayAdamo" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Tests">⚠️</a></td>
      <td align="center"><a href="https://github.com/robertodoering"><img src="https://avatars.githubusercontent.com/u/20045287?v=4?s=100" width="100px;" alt="Roberto Doering"/><br /><sub><b>Roberto Doering</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Code">💻</a> <a href="#design-robertodoering" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Documentation">📖</a> <a href="#example-robertodoering" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Tests">⚠️</a> <a href="#ideas-robertodoering" title="Ideas, Planning, & Feedback">🤔</a></td>
      <td align="center"><a href="https://github.com/niteshsh4rma"><img src="https://avatars.githubusercontent.com/u/58659088?v=4?s=100" width="100px;" alt="Nitesh Sharma"/><br /><sub><b>Nitesh Sharma</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Code">💻</a> <a href="#design-niteshsh4rma" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Documentation">📖</a> <a href="#example-niteshsh4rma" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Tests">⚠️</a> <a href="#ideas-niteshsh4rma" title="Ideas, Planning, & Feedback">🤔</a></td>
    </tr>
    <tr>
      <td align="center"><a href="https://github.com/ngoluuduythai"><img src="https://avatars.githubusercontent.com/u/12238262?v=4?s=100" width="100px;" alt="ngoluuduythai"/><br /><sub><b>ngoluuduythai</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=ngoluuduythai" title="Documentation">📖</a> <a href="#translation-ngoluuduythai" title="Translation">🌍</a></td>
      <td align="center"><a href="https://github.com/its-me-mahmud"><img src="https://avatars.githubusercontent.com/u/53822204?v=4?s=100" width="100px;" alt="Abdullah Al Mahmud"/><br /><sub><b>Abdullah Al Mahmud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=its-me-mahmud" title="Documentation">📖</a> <a href="#translation-its-me-mahmud" title="Translation">🌍</a></td>
      <td align="center"><a href="https://github.com/omar6260"><img src="https://avatars.githubusercontent.com/u/82382673?v=4?s=100" width="100px;" alt="Oumar fall"/><br /><sub><b>Oumar fall</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=omar6260" title="Documentation">📖</a> <a href="#translation-omar6260" title="Translation">🌍</a></td>
      <td align="center"><a href="https://github.com/natastro"><img src="https://avatars.githubusercontent.com/u/17433156?v=4?s=100" width="100px;" alt="Natalie Stroud"/><br /><sub><b>Natalie Stroud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=natastro" title="Documentation">📖</a> <a href="#translation-natastro" title="Translation">🌍</a></td>
      <td align="center"><a href="https://github.com/novas1r1"><img src="https://avatars.githubusercontent.com/u/2575205?v=4?s=100" width="100px;" alt="novas1r1"/><br /><sub><b>novas1r1</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=novas1r1" title="Documentation">📖</a> <a href="#translation-novas1r1" title="Translation">🌍</a> <a href="#ideas-novas1r1" title="Ideas, Planning, & Feedback">🤔</a></td>
    </tr>
    <tr>
      <td align="center"><a href="https://github.com/eltociear"><img src="https://avatars.githubusercontent.com/u/22633385?v=4?s=100" width="100px;" alt="Ikko Ashimine"/><br /><sub><b>Ikko Ashimine</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=eltociear" title="Documentation">📖</a></td>
      <td align="center"><a href="https://github.com/VinniciusJesus"><img src="https://avatars.githubusercontent.com/u/57817746?v=4?s=100" width="100px;" alt="Marcos Vinícius"/><br /><sub><b>Marcos Vinícius</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=VinniciusJesus" title="Documentation">📖</a> <a href="#translation-VinniciusJesus" title="Translation">🌍</a></td>
      <td align="center"><a href="https://github.com/MarkOSullivan94"><img src="https://avatars.githubusercontent.com/u/6950843?v=4?s=100" width="100px;" alt="Mark O'Sullivan"/><br /><sub><b>Mark O'Sullivan</b></sub></a><br /><a href="#ideas-MarkOSullivan94" title="Ideas, Planning, & Feedback">🤔</a></td>
      <td align="center"><a href="https://github.com/bors-ng"><img src="https://avatars.githubusercontent.com/u/24979321?v=4?s=100" width="100px;" alt="bors-ng"/><br /><sub><b>bors-ng</b></sub></a><br /><a href="#maintenance-bors-ng" title="Maintenance">🚧</a> <a href="https://github.com/twitter-dart/twitter-api-v2/pulls?q=is%3Apr+reviewed-by%3Abors-ng" title="Reviewed Pull Requests">👀</a></td>
      <td align="center"><a href="https://github.com/all-contributors"><img src="https://avatars.githubusercontent.com/u/46410174?v=4?s=100" width="100px;" alt="All Contributors"/><br /><sub><b>All Contributors</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=all-contributors" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center"><a href="https://github.com/codecov"><img src="https://avatars.githubusercontent.com/u/8226205?v=4?s=100" width="100px;" alt="Codecov"/><br /><sub><b>Codecov</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=codecov" title="Tests">⚠️</a> <a href="#maintenance-codecov" title="Maintenance">🚧</a> <a href="#security-codecov" title="Security">🛡️</a></td>
      <td align="center"><a href="https://github.com/fossabot"><img src="https://avatars.githubusercontent.com/u/9543448?v=4?s=100" width="100px;" alt="FOSSA"/><br /><sub><b>FOSSA</b></sub></a><br /><a href="#maintenance-fossas" title="Maintenance">🚧</a> <a href="#security-fossas" title="Security">🛡️</a></td>
      <td align="center"><a href="https://github.com/yuto90"><img src="https://avatars.githubusercontent.com/u/53107639?v=4?s=100" width="100px;" alt="yuto90"/><br /><sub><b>yuto90</b></sub></a><br /><a href="#blog-yuto90" title="Blogposts">📝</a> <a href="#content-yuto90" title="Content">🖋</a> <a href="#example-yuto90" title="Examples">💡</a> <a href="#tutorial-yuto90" title="Tutorials">✅</a></td>
      <td align="center"><a href="https://github.com/normidar"><img src="https://avatars.githubusercontent.com/u/36730656?v=4?s=100" width="100px;" alt="normidar"/><br /><sub><b>normidar</b></sub></a><br /><a href="#ideas-normidar" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=normidar" title="Code">💻</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=normidar" title="Documentation">📖</a> <a href="#question-normidar" title="Answering Questions">💬</a></td>
      <td align="center"><a href="https://github.com/TSurkis"><img src="https://avatars.githubusercontent.com/u/10674270?v=4?s=100" width="100px;" alt="Tim Surkis"/><br /><sub><b>Tim Surkis</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/issues?q=author%3ATSurkis" title="Bug reports">🐛</a> <a href="#ideas-TSurkis" title="Ideas, Planning, & Feedback">🤔</a> <a href="#question-TSurkis" title="Answering Questions">💬</a> <a href="#userTesting-TSurkis" title="User Testing">📓</a></td>
    </tr>
    <tr>
      <td align="center"><a href="https://github.com/shinobi-art"><img src="https://avatars.githubusercontent.com/u/79818229?v=4?s=100" width="100px;" alt="shinobi-art"/><br /><sub><b>shinobi-art</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/issues?q=author%3Ashinobi-art" title="Bug reports">🐛</a> <a href="#question-shinobi-art" title="Answering Questions">💬</a></td>
      <td align="center"><a href="https://github.com/Tushar-Mishra999"><img src="https://avatars.githubusercontent.com/u/75738710?v=4?s=100" width="100px;" alt="Tushar Mishra"/><br /><sub><b>Tushar Mishra</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=Tushar-Mishra999" title="Code">💻</a></td>
      <td align="center"><a href="https://github.com/azkadev"><img src="https://avatars.githubusercontent.com/u/82513502?v=4?s=100" width="100px;" alt="Azka Full Snack Developer:)"/><br /><sub><b>Azka Full Snack Developer:)</b></sub></a><br /><a href="#question-azkadev" title="Answering Questions">💬</a> <a href="#ideas-azkadev" title="Ideas, Planning, & Feedback">🤔</a></td>
    </tr>
  </tbody>
</table>
<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

我们的项目遵循 [all-contributors](https://github.com/all-contributors/all-contributors) 约定。 我们欢迎任何形式的贡献！

## 1.7. 支持 ❤️

最简单的支持方法是给我们的项目一个标记⭐ [GitHub](https://github.com/twitter-dart/twitter-api-v2) 和 [Pub.dev](https://pub.dev/packages/twitter_api_v2)。

你也可以成为**赞助者**：

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

你也可以在你使用**twitter_api_v2**的仓库展示下列徽章：

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.8. 协议🔑

**twitter_api_v2** 的所有资源遵循 `BSD-3` 协议.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **注意**</br>
> 源码中的许可生命是根据 `.github/header-checker-lint.yml` 严格验证的。请检查 [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) 允许的标准。

## 1.9. 更多信息 🧐

**twitter_api_v2** 是由 **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness)) _**设计和实现的。

- [作者资料](https://github.com/myConsciousness)
- [授权](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [接口文档](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [发行说明](https://github.com/twitter-dart/twitter-api-v2/releases)
- [反馈问题](https://github.com/twitter-dart/twitter-api-v2/issues)
