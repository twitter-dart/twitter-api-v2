// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:twitter_api_core/twitter_api_core.dart' as core;

// Project imports:
import '../../../twitter_api_v2.dart';
import '../base_service.dart';
import 'geo_granularity.dart';

/// This class provides methods to easily access endpoints based on Geo.
abstract class GeoService {
  /// Returns the new instance of [GeoService].
  factory GeoService({required core.ClientContext context}) =>
      _GeoService(context: context);

  /// Returns place data associated with a specific place ID.
  ///
  /// ## Parameters
  ///
  /// - [placeId]: An ID indicating a specific place.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/1.1/geo/id/:placeId.json
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 1.0a
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    75 requests per 15-minute window per each authenticated user
  Future<TwitterResponse<PlaceData, void>> lookupById({
    required String placeId,
  });

  /// Search for places that can be attached to a Tweet.
  ///
  /// Given a latitude and a longitude pair, an IP address, or a name,
  /// this request will return a list of all the valid places that
  /// can be used as the `placeId` when updating a status.
  ///
  /// Conceptually, a query can be made from the user's location,
  /// retrieve a list of places, have the user validate the location they
  /// are at, and then send the ID of this location.
  ///
  /// This is the recommended method to use find places that can be
  /// attached to tweet.
  ///
  /// Unlike `GET /1.1/geo/reverse_geocode` which provides raw data access,
  /// this endpoint can potentially re-order places with regards to the user
  /// who is authenticated. This approach is also preferred for interactive
  /// place matching with the user.
  ///
  /// Some parameters in this method are only required based on the
  /// existence of other parameters. For instance, [latitude] is required if
  /// [longitude] is provided, and vice-versa. Authentication is recommended,
  /// but not required with this method.
  ///
  /// ## Parameters
  ///
  /// - [query]: Free-form text to match against while executing
  ///            a geo-based query, best suited for finding nearby locations
  ///            by name. Remember to URL encode the query.
  ///
  /// - [granularity]: This is the minimal granularity of place types to
  ///                  return and must be one of: [GeoGranularity.neighborhood],
  ///                  [GeoGranularity.city], [GeoGranularity.admin] or
  ///                  [GeoGranularity.country]. If no granularity is provided
  ///                  for the request [GeoGranularity.neighborhood] is assumed.
  ///                  Setting this to [GeoGranularity.city], for example,
  ///                  will find places which have a type of
  ///                  [GeoGranularity.city], [GeoGranularity.admin] or
  ///                  [GeoGranularity.country].
  ///
  /// - [maxResults]: A hint as to the number of results to return.
  ///                 This does not guarantee that the number of results
  ///                 returned will equal max_results, but instead informs how
  ///                 many "nearby" results to return. Ideally, only pass in
  ///                 the number of places you intend to display to the user
  ///                 here.
  ///
  /// - [latitude]: The `latitude` to search around.
  ///               This parameter will be ignored unless it is
  ///               inside the `range -90.0 to +90.0` (North is positive)
  ///               inclusive. It will also be ignored if there isn't a
  ///               corresponding long parameter.
  ///
  /// - [longitude]: The `longitude` to search around.
  ///                The valid ranges for longitude are `-180.0 to +180.0`
  ///                (East is positive) inclusive. This parameter will be
  ///                ignored if outside that range, if it is not a number,
  ///                if geo_enabled is turned off, or if there not a
  ///                corresponding lat parameter.
  ///
  /// - [ipAddress]: An IP address.
  ///                Used when attempting to fix geo location based off of
  ///                the user's IP address.
  ///
  /// ## Endpoint Url
  ///
  /// - https://api.twitter.com/1.1/geo/search.json
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 1.0a
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/v1/geo/places-near-location/api-reference/get-geo-search
  Future<TwitterResponse<List<PlaceData>, void>> searchLocations({
    String? query,
    GeoGranularity? granularity,
    int? maxResults,
    double? latitude,
    double? longitude,
    String? ipAddress,
  });
}

class _GeoService extends BaseService implements GeoService {
  /// Returns the new instance of [_GeoService].
  _GeoService({required super.context});

  @override
  Future<TwitterResponse<PlaceData, void>> lookupById({
    required String placeId,
  }) async {
    final response = await super.get(
      core.UserContext.oauth1Only,
      '/1.1/geo/id/$placeId.json',
    );

    final place = core.tryJsonDecode(
      response,
      response.body,
    );

    return TwitterResponse(
      rateLimit: RateLimit.fromJson(
        rateLimitConverter.convert(response.headers),
      ),
      data: PlaceData.fromJson(_toV2Format([place]).first),
    );
  }

  @override
  Future<TwitterResponse<List<PlaceData>, void>> searchLocations({
    String? query,
    GeoGranularity? granularity,
    int? maxResults,
    double? latitude,
    double? longitude,
    String? ipAddress,
  }) async {
    final response = await super.get(
      core.UserContext.oauth1Only,
      '/1.1/geo/search.json',
      queryParameters: {
        'query': query,
        'granularity': granularity,
        'max_results': maxResults,
        'lat': latitude,
        'long': longitude,
        'ip': ipAddress,
      },
    );

    final places = core.tryJsonDecode(
      response,
      response.body,
    )['result']['places'];

    return TwitterResponse(
      rateLimit: RateLimit.fromJson(
        rateLimitConverter.convert(response.headers),
      ),
      data: _toV2Format(places)
          .map<PlaceData>((json) => PlaceData.fromJson(json))
          .toList(),
    );
  }

  List<dynamic> _toV2Format(
    final List<dynamic> places,
  ) {
    final json = <dynamic>[];
    for (final place in places) {
      final $place = Map<String, dynamic>.from(place);

      final containedWithinIdentifiers = <String>[];
      for (final containedWithinPlace in place['contained_within']) {
        containedWithinIdentifiers.add(containedWithinPlace['id']);
      }

      $place['contained_within'] = containedWithinIdentifiers;

      json.add($place);
    }

    return json;
  }
}
