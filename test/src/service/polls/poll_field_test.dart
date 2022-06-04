// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/polls/poll_field.dart';

void main() {
  test('.value', () {
    expect(PollField.durationMinutes.value, 'duration_minutes');
    expect(PollField.endDatetime.value, 'end_datetime');
    expect(PollField.id.value, 'id');
    expect(PollField.options.value, 'options');
    expect(PollField.votingStatus.value, 'voting_status');
  });
}
