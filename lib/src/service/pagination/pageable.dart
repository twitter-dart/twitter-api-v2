// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

abstract class Pageable {
  const Pageable();

  /// Returns the token for next page.
  String? get nextToken;

  /// Returns the token for previous page.
  String? get previousToken;
}
