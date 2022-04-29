// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/service/base_service.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import 'package:twitter_api_v2/src/twitter_client.dart';

abstract class UsersService {
  /// Returns the new instance of [UsersService].
  factory UsersService({required TwitterClient client}) =>
      _UsersService(client: client);

  /// Returns information about an authorized user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/me
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me
  Future<TwitterResponse<UserData, void>> lookupMe();
}

class _UsersService extends BaseService implements UsersService {
  /// Returns the new instance of [_UsersService].
  _UsersService({required TwitterClient client}) : super(client: client);

  @override
  Future<TwitterResponse<UserData, void>> lookupMe() async {
    final response = await super.get('/2/users/me');

    return TwitterResponse(data: UserData.fromJson(response['data']));
  }
}
