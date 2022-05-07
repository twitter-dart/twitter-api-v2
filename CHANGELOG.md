# Release Note

## v1.6.0

- Added **Batch Compliance** endpoints. ([#32](https://github.com/twitter-dart/twitter-api-v2/issues/32))
  - GET /2/compliance/jobs
  - GET /2/compliance/jobs/:id
  - POST /2/compliance/jobs

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
