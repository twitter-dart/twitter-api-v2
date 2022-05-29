# Release Note

## v2.3.0

- Added `tweetFields` argument. ([#179](https://github.com/twitter-dart/twitter-api-v2/issues/179))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/:id/retweeted_by
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/users/:id/blocking
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - GET /2/users/:id/muting
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/lists/:id/tweets
  - GET /2/lists/:id/members

## v2.2.0

- Added `Reverse Chronological Timelines` endpoint. ([#164](https://github.com/twitter-dart/twitter-api-v2/issues/164))
  - GET /2/users/:id/timelines/reverse_chronological
- Added `expansions` argument to `UsersService`. ([#142](https://github.com/twitter-dart/twitter-api-v2/issues/142))
  - GET /2/users/:id/blocking
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - GET /2/users/:id/muting
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
- Added `expansions` argument to `SpacesService`. ([#171](https://github.com/twitter-dart/twitter-api-v2/issues/171))
  - GET /2/spaces/search
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/spaces/by/creator_ids
- Added `expansions` argument to `ListsService`. ([#172](https://github.com/twitter-dart/twitter-api-v2/issues/172))
  - GET /2/lists/:id/tweets
  - GET /2/lists/:id/followers
  - GET /2/users/:id/followed_lists
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists
  - GET /2/lists/:id/members
  - GET /2/users/:id/list_memberships
  - GET /2/users/:id/pinned_lists
- Fixed method name from `tweetsService.connectVolumeStreams` to `tweetsService.connectVolumeStream`.
- Fixed return type of `tweetsService.connectVolumeStream` from `Future<Stream<TweetData>>` to `Future<Stream<TwitterResponse<TweetData, void>>>`.
- Added `Filtered Stream` endpoint. ([#4](https://github.com/twitter-dart/twitter-api-v2/issues/4))
  - GET /2/tweets/search/stream
  - GET /2/tweets/search/stream/rules
  - POST /2/tweets/search/stream/rules

## v2.1.0

- Added `expansions` argument to `TweetsService`. ([#141](https://github.com/twitter-dart/twitter-api-v2/issues/141))
  - [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)
  - [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)
  - [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)
  - [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets)
  - [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id)
  - [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)
  - [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)
  - [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent)
  - [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)
  - [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)
  - [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)
- Added expanded fields to `TweetData`. ([#141](https://github.com/twitter-dart/twitter-api-v2/issues/141))
  - `authorId`
  - `inReplyToUserId`
  - `referencedTweets`
  - `entities`
  - `attachments`
  - `geo`
- Added `includes` field to `TwitterResponse`. ([#144](https://github.com/twitter-dart/twitter-api-v2/issues/144))
- With the addition of the `includes` field to `TwitterResponse`, the following objects have been added. ([#144](https://github.com/twitter-dart/twitter-api-v2/issues/144))
  - `MediaData`
  - `PollData`
- Added **Volume Stream** endpoint. ([#14](https://github.com/twitter-dart/twitter-api-v2/issues/14))
  - GET /2/tweets/sample/stream

## v2.0.0

- Exposed service classes. ([#122](https://github.com/twitter-dart/twitter-api-v2/issues/122)
  - `TweetsService`
  - `UsersService`
  - `ListsService`
  - `SpacesService`
  - `ComplianceService`
- Added arguments to `tweetsService.createTweet`. ([#130](https://github.com/twitter-dart/twitter-api-v2/issues/130)) ([#90](https://github.com/twitter-dart/twitter-api-v2/issues/90))
  - `inReplyToTweetId`
  - `replySetting`
  - `mediaIds`
  - `taggedUserIds`
- Improved processing when the data field does not exist in the response body returned from the Twitter API. ([#124](https://github.com/twitter-dart/twitter-api-v2/issues/124))
  - In previous versions, `POST` and `DELETE` communications for deleted content would raise a `TwitterException`, but this release has been modified to always return a boolean instead of an exception in this case.
- Internal processing has been refactored to improve scalability and maintainability. There are no disruptive changes as a result of this refactoring.
- Added convenience utility for OAuth. ([#102](https://github.com/twitter-dart/twitter-api-v2/issues/102))
  - `OAuthUtils.generateAppOnlyBearerToken`

## v1.8.0

- Added **Lists Manage** endpoints. ([#30](https://github.com/twitter-dart/twitter-api-v2/issues/30))
  - DELETE /2/lists/:id
  - PUT /2/lists/:id
  - POST /2/lists
- Added **Lists Follows** endpoints. ([#27](https://github.com/twitter-dart/twitter-api-v2/issues/27))
  - DELETE /2/users/:id/followed_lists/:list_id
  - GET /2/lists/:id/followers
  - GET /2/users/:id/followed_lists
  - POST /2/users/:id/followed_lists
- Added **Lists Members** endpoints. ([#29](https://github.com/twitter-dart/twitter-api-v2/issues/29))
  - DELETE /2/lists/:id/members/:user_id
  - GET /2/lists/:id/members
  - GET /2/users/:id/list_memberships
  - POST /2/lists/:id/members

## v1.7.0

- Added **Tweets Timelines** endpoints. ([#11](https://github.com/twitter-dart/twitter-api-v2/issues/11))
  - GET /2/users/:id/mentions
  - GET /2/users/:id/tweets
- Added **Users Blocks** endpoints. ([#20](https://github.com/twitter-dart/twitter-api-v2/issues/20))
  - DELETE /2/users/:source_user_id/blocking/:target_user_id
  - GET /2/users/:id/blocking
  - POST /2/users/:id/blocking
- Added **Lists Pinnings** endpoints. ([#31](https://github.com/twitter-dart/twitter-api-v2/issues/31))
  - DELETE /2/users/:id/pinned_lists/:list_id
  - GET /2/users/:id/pinned_lists
  - POST /2/users/:id/pinned_lists
- Added **Lists Tweet Lookup** endpoint. ([#26](https://github.com/twitter-dart/twitter-api-v2/issues/26))
  - GET /2/lists/:id/tweets

---

- Refactored method names. Prefixes for methods that perform `GET` communication other than the search endpoint have been unified with `lookup`. This makes it a destructive change, but please refer to the following correspondence table for details of the change.
  - **Tweets Service**
    - From `likingUsers` to `lookupLikingUsers`
    - From `likingTweets` to `lookupLikedTweets`
    - From `retweetedBy` to `lookupRetweetedUsers`
    - From `quoteTweets` to `lookupQuoteTweets`
    - From `bookmarks` to `lookupBookmarks`
  - **Users Service**
    - From `followers` to `lookupFollowers`
    - From `followings` to `lookupFollowings`
    - From `mutingUsers` to `lookupMutingUsers`
  - **Lists Service**
    - From `pinnedLists` to `lookupPinnedLists`

## v1.6.0

- Fixed a bug in `DELETE` communication.
- Improved error message from `TwitterException`. ([#93](https://github.com/twitter-dart/twitter-api-v2/issues/93))
- Added **Batch Compliance** endpoints. ([#32](https://github.com/twitter-dart/twitter-api-v2/issues/32))
  - GET /2/compliance/jobs
  - GET /2/compliance/jobs/:id
  - POST /2/compliance/jobs
- Added **Users Mutes** endpoints. ([#22](https://github.com/twitter-dart/twitter-api-v2/issues/22))
  - DELETE /2/users/:source_user_id/muting/:target_user_id
  - GET /2/users/:id/muting
  - POST /2/users/:id/muting
- Added **Tweets Hide Replies** endpoints. ([#5](https://github.com/twitter-dart/twitter-api-v2/issues/5))
  - PUT /2/tweets/:id/hidden

## v1.5.0

- Renamed method name in **TweetsService**. ([#79](https://github.com/twitter-dart/twitter-api-v2/issues/79))
  - Renamed method from `tweetsService.lookupTweet` to `tweetsService.lookupById.`
  - Renamed method from `tweetsService.lookupTweets` to `tweetsService.lookupByIds.`
- Added **Spaces Lookup** endpoints. ([#25](https://github.com/twitter-dart/twitter-api-v2/issues/25))
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/spaces/by/creator_ids
- Added **Lists Lookup** endpoints. ([#28](https://github.com/twitter-dart/twitter-api-v2/issues/28))
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists

## v1.4.0

- Fixed response handling.
  - The HTTP status of a response was regarded as an exception for data other than 200, but the HTTP status in the 200s is now regarded as a normal completion.
- Improved and added parameters for endpoints already implemented in this library. ([#66](https://github.com/twitter-dart/twitter-api-v2/issues/66))
  - Added parameters to `tweetsService.createTweet`.
    - `quoteTweetId`
    - `forSuperFollowersOnly`
  - Added a parameter to `tweetsService.linkingUsers`.
    - `maxResults`
  - Added a parameter to `tweetsService.linkingTweets`.
    - `maxResults`
  - Added a parameter to `tweetsService.retweetedBy`.
    - `maxResults`
  - Added a parameter to `tweetsService.quoteTweets`.
    - `maxResults`
  - Added a parameter to `tweetsService.searchRecent`.
    - `maxResults`
  - Added a parameter to `tweetsService.searchAll`.
    - `maxResults`
  - Added a parameter to `usersService.followers`.
    - `maxResults`
  - Added a parameter to `usersService.followings`.
    - `maxResults`

## v1.3.0

- Improved the error message from `TwitterException`. ([#48](https://github.com/twitter-dart/twitter-api-v2/issues/48))
- Added `previousToken` to `tweet_meta` and `tweet_count_meta`, and added `paginationToken` or `nextToken` argument for endpoints that support pagination. ([#60](https://github.com/twitter-dart/twitter-api-v2/issues/60))
- Added `previousToken` to `user_meta`, and added `paginationToken` argument for endpoints that support pagination. ([#60](https://github.com/twitter-dart/twitter-api-v2/issues/60))

## v1.2.0

- Fixed typo from `tweetService` to `tweetsService` in `TwitterApi`.
- Improved error handling. ([#41](https://github.com/twitter-dart/twitter-api-v2/issues/41))

## v1.1.0

- Added **Tweet Counts** endpoints. ([#12](https://github.com/twitter-dart/twitter-api-v2/issues/12))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added **Tweet Bookmarks** endpoints. ([#2](https://github.com/twitter-dart/twitter-api-v2/issues/2))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added **Users Lookup** endpoints. ([#23](https://github.com/twitter-dart/twitter-api-v2/issues/23))
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
- Added **Spaces Search** endpoints. ([#23](https://github.com/twitter-dart/twitter-api-v2/issues/23))
  - GET /2/spaces/search

## v1.0.0

- Specification changes and improvements have been made to the authentication method. ([#44](https://github.com/twitter-dart/twitter-api-v2/issues/44))
- Added **Quote Tweets** endpoint. ([#8](https://github.com/twitter-dart/twitter-api-v2/issues/8))
  - GET /2/tweets/:id/quote_tweets
- Added **Tweets Search** endpoints. ([#10](https://github.com/twitter-dart/twitter-api-v2/issues/10))
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
- Added **Tweets Lookup** endpoints. ([#13](https://github.com/twitter-dart/twitter-api-v2/issues/13))
  - GET /2/tweets
  - GET /2/tweets/:id

## v0.1.0

- Added **Tweets Likes** endpoints. ([#6](https://github.com/twitter-dart/twitter-api-v2/issues/6))
  - DELETE /2/users/:id/likes/:tweet_id
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - POST /2/users/:id/likes
- Added **Tweets Manage** endpoints. ([#7](https://github.com/twitter-dart/twitter-api-v2/issues/7))
  - DELETE /2/tweets/:id
  - POST /2/tweets
- Added **Tweets Retweet** endpoints. ([#9](https://github.com/twitter-dart/twitter-api-v2/issues/9))
  - DELETE /2/users/:id/retweets/:source_tweet_id
  - GET /2/tweets/:id/retweeted_by
  - POST /2/users/:id/retweets
- Added **Users Follows** endpoints. ([#21](https://github.com/twitter-dart/twitter-api-v2/issues/21))
  - DELETE /2/users/:source_user_id/following/:target_user_id
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - POST /2/users/:id/following

## v0.0.1

- First Release
