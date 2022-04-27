// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_api_v2/src/twitter_client.dart';

abstract class TwitterApi {}

class _TwitterApi implements TwitterApi {
  _TwitterApi({required String token}) : _client = TwitterClient(token: token);

  /// The twitter client
  final TwitterClient _client;
}
