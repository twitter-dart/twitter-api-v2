// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../expansion.dart';

/// Represents an extensible field about List.
enum ListExpansion implements Expansion {
  /// `owner_id`
  ownerId('owner_id');

  @override
  final String fieldName;

  const ListExpansion(this.fieldName);
}
