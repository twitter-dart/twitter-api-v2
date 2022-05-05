// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

void main() async {
  //! You need to get keys and tokens at https://developer.twitter.com
  final twitter = v2.TwitterApi(
    //! Authentication with OAuth2.0 is the default.
    //!
    //! Note that to use endpoints that require certain user permissions,
    //! such as Tweets and Likes, you need a token issued by OAuth2.0 PKCE.
    bearerToken:
        'AAAAAAAAAAAAAAAAAAAAAFnmbwEAAAAAlSAfKD74QTIQ3POQYZYbx4ugeig%3DqV7uY8lRde7K1BHHodOov1UPSVfFjdf6zxJGxk7z0lFWA2RpCQ',

    //! Or perhaps you would prefer to use the good old OAuth1.0a method
    //! over the OAuth2.0 PKCE method. Then you can use the following code
    //! to set the OAuth1.0a tokens.
    //!
    //! However, note that some endpoints cannot be used for OAuth 1.0a method
    //! authentication.
    oauthTokens: v2.OAuthTokens(
      consumerKey: '7K0JiE9eiaH3gbnQz2WSV0Eu9',
      consumerSecret: 'cdbHtEoHKZFhbdfNecBm9yxjTkvoTyN3bCfcO91N7cDS9OCNFz',
      accessToken: '1392337296997851139-goWtiQzbL8mrxDeB4ME1BqG1MRBPcn',
      accessTokenSecret: 'WEDQhlnOvQWJopJ8xhCldnlleYXnXkIbvG89S2ircM08X',
    ),
  );

  try {
    final me = await twitter.usersService.lookupMe();
    final tweets = await twitter.usersService.followings(
      userId: me.data.id,
      maxResults: 200,
    );

    // final response = await twitter.tweetsService.createLike(
    //   userId: me.data.id,
    //   tweetId: tweets.data.first.id,
    // );

    print(tweets);
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.response.body);
    print(e);
  }
}
