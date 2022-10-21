// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/filtering/operator/conjunction/tweet_lang.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

void main() {
  group('.toString', () {
    test('normal case', () {
      final actual = TweetLang(TweetLanguage.amharic);

      expect(actual.toString(), 'lang:am');
    });

    test('when negated', () {
      final actual = TweetLang.negated(TweetLanguage.amharic);

      expect(actual.toString(), '-lang:am');
    });
  });
}
