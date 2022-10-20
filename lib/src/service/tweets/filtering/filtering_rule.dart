// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'channel/entry_channel.dart';
import 'filtering_rule_group.dart';

class FilteringRule {
  FilteringRule._();

  /// Returns the new entry point to build filtering rules.
  static EntryChannel of() => FilteringRuleGroup().entryChannel;
}
