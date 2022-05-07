// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/base_service.dart';
import 'package:twitter_api_v2/src/service/compliance/compliance_data.dart';
import 'package:twitter_api_v2/src/service/compliance/job_status.dart';
import 'package:twitter_api_v2/src/service/compliance/job_type.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';

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
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id
  Future<TwitterResponse<ComplianceData, void>> lookupJob(
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
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs
  Future<TwitterResponse<List<ComplianceData>, void>> lookupJobs(
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
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    150 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs
  Future<TwitterResponse<ComplianceData, void>> createJob(
      {required JobType jobType, String? jobName, bool? resumable});
}

class _ComplianceService extends BaseService implements ComplianceService {
  /// Returns the new instance of [_ComplianceService].
  _ComplianceService({required ClientContext context})
      : super(context: context);

  @override
  Future<TwitterResponse<ComplianceData, void>> lookupJob(
      {required String jobId}) async {
    final response = await super.get(
      UserContext.oauth2Only,
      '/2/compliance/jobs/$jobId',
    );

    return TwitterResponse(data: ComplianceData.fromJson(response['data']));
  }

  @override
  Future<TwitterResponse<List<ComplianceData>, void>> lookupJobs(
      {required JobType jobType, JobStatus? jobStatus}) async {
    final response = await super.get(
      UserContext.oauth2Only,
      '/2/compliance/jobs',
      queryParameters: {
        'type': jobType.name,
        'status': jobStatus?.name,
      },
    );

    return TwitterResponse(
      data: response['data']
          .map<ComplianceData>(
              (compliance) => ComplianceData.fromJson(compliance))
          .toList(),
    );
  }

  @override
  Future<TwitterResponse<ComplianceData, void>> createJob(
      {required JobType jobType, String? jobName, bool? resumable}) async {
    final response = await super.post(
      UserContext.oauth2Only,
      '/2/compliance/jobs',
      body: {
        'type': jobType.name,
        'name': jobName,
        'resumable': resumable,
      },
    );

    return TwitterResponse(data: ComplianceData.fromJson(response['data']));
  }
}
