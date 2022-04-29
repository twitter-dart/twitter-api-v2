// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  // You need to get keys and tokens at
  // https://developer.twitter.com
  final twitter = v2.TwitterApi(
    consumerKey: 'YOUR_CONSUMER_KEY', // Or it's called "API Key"
    consumerSecret: 'YOUR_CONSUMER_SECRET', // Or it's called "API Secret"
    accessToken: 'YOUR_ACCESS_TOKEN',
    accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET',
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
