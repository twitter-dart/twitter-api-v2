// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The class represents the response from Twitter API v2.
class TwitterResponse<D, M> {
  /// Returns the new instance of [TwitterResponse].
  TwitterResponse({required this.data, this.meta});

  /// The data field
  final D data;

  /// The meta field
  final M? meta;

  /// Returns true if this response has meta, otherwise false.
  bool get hasMeta => meta != null;

  /// Returns true if this response has not meta, otherwise false.
  bool get hasNotMeta => !hasMeta;

  @override
  String toString() => 'TwitterResponse(data: $data, meta: $meta)';
}
