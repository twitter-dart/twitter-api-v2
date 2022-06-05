// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitterGeo _$TwitterGeoFromJson(Map<String, dynamic> json) {
  return _TwitterGeo.fromJson(json);
}

/// @nodoc
mixin _$TwitterGeo {
  String? get placeId => throw _privateConstructorUsedError;
  TwitterGeoCoordinates? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitterGeoCopyWith<TwitterGeo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterGeoCopyWith<$Res> {
  factory $TwitterGeoCopyWith(
          TwitterGeo value, $Res Function(TwitterGeo) then) =
      _$TwitterGeoCopyWithImpl<$Res>;
  $Res call({String? placeId, TwitterGeoCoordinates? coordinates});

  $TwitterGeoCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$TwitterGeoCopyWithImpl<$Res> implements $TwitterGeoCopyWith<$Res> {
  _$TwitterGeoCopyWithImpl(this._value, this._then);

  final TwitterGeo _value;
  // ignore: unused_field
  final $Res Function(TwitterGeo) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as TwitterGeoCoordinates?,
    ));
  }

  @override
  $TwitterGeoCoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $TwitterGeoCoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$$_TwitterGeoCopyWith<$Res>
    implements $TwitterGeoCopyWith<$Res> {
  factory _$$_TwitterGeoCopyWith(
          _$_TwitterGeo value, $Res Function(_$_TwitterGeo) then) =
      __$$_TwitterGeoCopyWithImpl<$Res>;
  @override
  $Res call({String? placeId, TwitterGeoCoordinates? coordinates});

  @override
  $TwitterGeoCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$_TwitterGeoCopyWithImpl<$Res> extends _$TwitterGeoCopyWithImpl<$Res>
    implements _$$_TwitterGeoCopyWith<$Res> {
  __$$_TwitterGeoCopyWithImpl(
      _$_TwitterGeo _value, $Res Function(_$_TwitterGeo) _then)
      : super(_value, (v) => _then(v as _$_TwitterGeo));

  @override
  _$_TwitterGeo get _value => super._value as _$_TwitterGeo;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_TwitterGeo(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as TwitterGeoCoordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitterGeo implements _TwitterGeo {
  const _$_TwitterGeo({this.placeId, this.coordinates});

  factory _$_TwitterGeo.fromJson(Map<String, dynamic> json) =>
      _$$_TwitterGeoFromJson(json);

  @override
  final String? placeId;
  @override
  final TwitterGeoCoordinates? coordinates;

  @override
  String toString() {
    return 'TwitterGeo(placeId: $placeId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitterGeo &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_TwitterGeoCopyWith<_$_TwitterGeo> get copyWith =>
      __$$_TwitterGeoCopyWithImpl<_$_TwitterGeo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitterGeoToJson(this);
  }
}

abstract class _TwitterGeo implements TwitterGeo {
  const factory _TwitterGeo(
      {final String? placeId,
      final TwitterGeoCoordinates? coordinates}) = _$_TwitterGeo;

  factory _TwitterGeo.fromJson(Map<String, dynamic> json) =
      _$_TwitterGeo.fromJson;

  @override
  String? get placeId => throw _privateConstructorUsedError;
  @override
  TwitterGeoCoordinates? get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TwitterGeoCopyWith<_$_TwitterGeo> get copyWith =>
      throw _privateConstructorUsedError;
}
