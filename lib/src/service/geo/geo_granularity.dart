// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../core/serializable.dart';

enum GeoGranularity implements Serializable {
  neighborhood,
  city,
  admin,
  country;

  @override
  String get value => name;

  const GeoGranularity();
}
