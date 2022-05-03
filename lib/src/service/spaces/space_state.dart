// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This enum represents the state of the space.
enum SpaceState {
  /// "scheduled"
  scheduled,

  /// "live"
  live,
}

extension SpaceStateExtension on SpaceState {
  /// Returns the space state associated with [state].
  static SpaceState toEnum(final String state) {
    switch (state) {
      case 'scheduled':
        return SpaceState.scheduled;
      case 'live':
        return SpaceState.live;
      default:
        throw ArgumentError('Unknown state: $state');
    }
  }
}
