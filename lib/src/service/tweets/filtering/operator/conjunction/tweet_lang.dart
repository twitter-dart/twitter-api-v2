// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../operator.dart';

class TweetLang extends Operator {
  /// Returns the new instance of [TweetLang].
  const TweetLang(
    this.language, {
    bool negated = false,
  }) : super(negated);

  factory TweetLang.negated(final core.TweetLanguage language) =>
      TweetLang(language, negated: true);

  /// The BCP 47 language
  final core.TweetLanguage language;

  @override
  String format() => 'lang:${language.code}';
}
