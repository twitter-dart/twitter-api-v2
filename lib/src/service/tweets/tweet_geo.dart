// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'tweet_geo_coordinates.dart';

part 'tweet_geo.freezed.dart';
part 'tweet_geo.g.dart';

@freezed
class TweetGeo with _$TweetGeo {
  const factory TweetGeo({
    @JsonKey(name: 'place_id') required String placeId,
    required TweetGeoCoordinates? coordinates,
  }) = _TweetGeo;

  factory TweetGeo.fromJson(Map<String, Object?> json) =>
      _$TweetGeoFromJson(json);
}
