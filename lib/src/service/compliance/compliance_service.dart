// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:

// 🌎 Project imports:
import '../../core/client/client_context.dart';
import '../../core/client/user_context.dart';
import '../base_service.dart';
import '../common/rate_limit.dart';
import '../response/response_field.dart';
import '../response/twitter_response.dart';
import '../response/twitter_stream_response.dart';
import 'batch_compliance_data.dart';
import 'compliance_stream_partition.dart';
import 'job_status.dart';
import 'job_type.dart';
import 'tweet_compliance_data.dart';
import 'user_compliance_data.dart';

/// This class provides methods to easily access endpoints based on Compliance.
abstract class ComplianceService {
  /// Returns the new instance of [ComplianceService].
  factory ComplianceService({required ClientContext context}) =>
      _ComplianceService(context: context);

  /// Returns  a single compliance job with the specified ID.
  ///
  /// ## Parameters
  ///
  /// - [jobId]: The unique identifier for the compliance job you want to
  ///            retrieve.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/compliance/jobs/:id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id
  Future<TwitterResponse<BatchComplianceData, void>> lookupJob(
      {required String jobId});

  /// Returns a list of recent compliance jobs.
  ///
  /// ## Parameters
  ///
  /// - [jobType]: Allows to filter by job type - either by tweets or user ID.
  ///              Only one filter (tweets or users) can be specified per
  ///              request.
  ///
  /// - [jobStatus]: Allows to filter by job status. Only one filter can be
  ///                specified per request. Default: `all`.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/compliance/jobs
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs
  Future<TwitterResponse<List<BatchComplianceData>, void>> lookupJobs(
      {required JobType jobType, JobStatus? jobStatus});

  /// Creates a new compliance job for Tweet IDs or user IDs.
  ///
  /// A compliance job will contain an ID and a destination URL.
  /// The destination URL represents the location that contains the list of IDs
  /// consumed by your App.
  ///
  /// You can run one batch job at a time.
  ///
  /// ## Parameters
  ///
  /// - [jobType]: Specify whether you will be uploading tweet or user IDs.
  ///              You can either specify tweets or users.
  ///
  /// - [jobName]: A name for this job, useful to identify multiple jobs
  ///              using a label you define.
  ///
  /// - [resumable]: Specifies whether to enable the upload URL with support
  ///                for resumable uploads. If true, this endpoint will return
  ///                a pre-signed URL with resumable uploads enabled.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/compliance/jobs
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs
  Future<TwitterResponse<BatchComplianceData, void>> createJob(
      {required JobType jobType, String? jobName, bool? resumable});

  /// Connect to one of four partitions of the Tweet compliance stream.
  ///
  /// ## Parameters
  ///
  /// - [partition]: Must be set to [ComplianceStreamPartition.section1],
  ///               [ComplianceStreamPartition.section2],
  ///               [ComplianceStreamPartition.section3] or
  ///               [ComplianceStreamPartition.section4]. Tweet compliance
  ///               events are split across 4 partitions, so 4 separate streams
  ///               are needed to receive all events.
  ///
  /// - [backfillMinutes]: By passing this parameter, you can recover up to
  ///                      5 minutes worth of data that you might have missed
  ///                      during a disconnection. The backfilled events will
  ///                      automatically flow through a reconnected stream,
  ///                      with older events generally being delivered before
  ///                      any newer events. You must include a whole number
  ///                      between 1 and 5 as the value to this parameter.
  ///                      This feature will deliver all events that published
  ///                      during the time frame selected, meaning that if you
  ///                      were disconnected for 90 seconds, and you requested
  ///                      2 minutes of backfill, you will receive 30 seconds
  ///                      worth of duplicate events. Due to this, you should
  ///                      make sure your system is tolerant of duplicate data.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/tweets/compliance/stream
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (Application-only)**:
  ///   100 requests per 15-minute window shared among all users of your app.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/streams/api-reference/get-tweets-compliance-stream
  Future<TwitterStreamResponse<TwitterResponse<TweetComplianceData, void>>>
      connectTweetsStream({
    required ComplianceStreamPartition partition,
    int? backfillMinutes,
  });

  /// Connect to one of four partitions of the User compliance stream.
  ///
  /// ## Parameters
  ///
  /// - [partition]: Must be set to [ComplianceStreamPartition.section1],
  ///               [ComplianceStreamPartition.section2],
  ///               [ComplianceStreamPartition.section3] or
  ///               [ComplianceStreamPartition.section4]. Tweet compliance
  ///               events are split across 4 partitions, so 4 separate streams
  ///               are needed to receive all events.
  ///
  /// - [backfillMinutes]: By passing this parameter, you can recover up to
  ///                      5 minutes worth of data that you might have missed
  ///                      during a disconnection. The backfilled events will
  ///                      automatically flow through a reconnected stream,
  ///                      with older events generally being delivered before
  ///                      any newer events. You must include a whole number
  ///                      between 1 and 5 as the value to this parameter.
  ///                      This feature will deliver all events that published
  ///                      during the time frame selected, meaning that if you
  ///                      were disconnected for 90 seconds, and you requested
  ///                      2 minutes of backfill, you will receive 30 seconds
  ///                      worth of duplicate events. Due to this, you should
  ///                      make sure your system is tolerant of duplicate data.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/2/users/compliance/stream
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (Application-only)**:
  ///   100 requests per 15-minute window shared among all users of your app.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/streams/api-reference/get-users-compliance-stream
  Future<TwitterStreamResponse<TwitterResponse<UserComplianceData, void>>>
      connectUsersStream({
    required ComplianceStreamPartition partition,
    int? backfillMinutes,
  });
}

class _ComplianceService extends BaseService implements ComplianceService {
  /// Returns the new instance of [_ComplianceService].
  _ComplianceService({required super.context});

  @override
  Future<TwitterResponse<BatchComplianceData, void>> lookupJob({
    required String jobId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/compliance/jobs/$jobId',
        ),
        dataBuilder: BatchComplianceData.fromJson,
      );

  @override
  Future<TwitterResponse<List<BatchComplianceData>, void>> lookupJobs({
    required JobType jobType,
    JobStatus? jobStatus,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/2/compliance/jobs',
          queryParameters: {
            'type': jobType.name,
            'status': jobStatus?.name,
          },
        ),
        dataBuilder: BatchComplianceData.fromJson,
      );

  @override
  Future<TwitterResponse<BatchComplianceData, void>> createJob({
    required JobType jobType,
    String? jobName,
    bool? resumable,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/2/compliance/jobs',
          body: {
            'type': jobType.name,
            'name': jobName,
            'resumable': resumable,
          },
        ),
        dataBuilder: BatchComplianceData.fromJson,
      );

  @override
  Future<TwitterStreamResponse<TwitterResponse<TweetComplianceData, void>>>
      connectTweetsStream({
    required ComplianceStreamPartition partition,
    int? backfillMinutes,
  }) async {
    final stream = await super.getStream(
      core.UserContext.oauth2Only,
      '/2/tweets/compliance/stream',
      queryParameters: {
        'partition': partition.value,
        'backfill_minutes': backfillMinutes,
      },
    );

    final headers = super.headerConverter.convert(stream.headers);

    return TwitterStreamResponse(
      rateLimit: RateLimit.fromJson(headers),
      stream: stream.body.map(
        (event) => TwitterResponse(
          rateLimit: RateLimit.fromJson(headers),
          data: TweetComplianceData.fromJson(event[ResponseField.data.value]),
        ),
      ),
    );
  }

  @override
  Future<TwitterStreamResponse<TwitterResponse<UserComplianceData, void>>>
      connectUsersStream({
    required ComplianceStreamPartition partition,
    int? backfillMinutes,
  }) async {
    final stream = await super.getStream(
      core.UserContext.oauth2Only,
      '/2/users/compliance/stream',
      queryParameters: {
        'partition': partition.value,
        'backfill_minutes': backfillMinutes,
      },
    );

    final headers = super.headerConverter.convert(stream.headers);

    return TwitterStreamResponse(
      rateLimit: RateLimit.fromJson(headers),
      stream: stream.body.map(
        (event) => TwitterResponse(
          rateLimit: RateLimit.fromJson(headers),
          data: UserComplianceData.fromJson(event[ResponseField.data.value]),
        ),
      ),
    );
  }
}
