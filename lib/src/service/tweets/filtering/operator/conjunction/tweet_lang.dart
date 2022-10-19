// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../tweet_language.dart';
import 'conjunction_required_operator.dart';

class TweetLang extends ConjunctionRequiredOperator {
  /// Returns the new instance of [TweetLang].
  const TweetLang(
    this.language, {
    bool negated = false,
  }) : super(negated);

  factory TweetLang.negated(final TweetLanguage language) =>
      TweetLang(language, negated: true);

  /// The BCP 47 language
  final TweetLanguage language;

  @override
  String format() => 'lang:${language.code}';
}
