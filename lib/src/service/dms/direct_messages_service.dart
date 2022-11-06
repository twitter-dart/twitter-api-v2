// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../base_service.dart';

abstract class DirectMessagesService {
  /// Returns the new instance of [DirectMessagesService].
  factory DirectMessagesService({required core.ClientContext context}) =>
      _DirectMessagesService(context: context);
}

class _DirectMessagesService extends BaseService
    implements DirectMessagesService {
  /// Returns the new instance of [_DirectMessagesService].
  _DirectMessagesService({required super.context});
}
