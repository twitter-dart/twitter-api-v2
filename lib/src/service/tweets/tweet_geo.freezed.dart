// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetGeo _$TweetGeoFromJson(Map<String, dynamic> json) {
  return _TweetGeo.fromJson(json);
}

/// @nodoc
mixin _$TweetGeo {
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  TweetGeoCoordinates get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetGeoCopyWith<TweetGeo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetGeoCopyWith<$Res> {
  factory $TweetGeoCopyWith(TweetGeo value, $Res Function(TweetGeo) then) =
      _$TweetGeoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      TweetGeoCoordinates coordinates});

  $TweetGeoCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$TweetGeoCopyWithImpl<$Res> implements $TweetGeoCopyWith<$Res> {
  _$TweetGeoCopyWithImpl(this._value, this._then);

  final TweetGeo _value;
  // ignore: unused_field
  final $Res Function(TweetGeo) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as TweetGeoCoordinates,
    ));
  }

  @override
  $TweetGeoCoordinatesCopyWith<$Res> get coordinates {
    return $TweetGeoCoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetGeoCopyWith<$Res> implements $TweetGeoCopyWith<$Res> {
  factory _$$_TweetGeoCopyWith(
          _$_TweetGeo value, $Res Function(_$_TweetGeo) then) =
      __$$_TweetGeoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      TweetGeoCoordinates coordinates});

  @override
  $TweetGeoCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$_TweetGeoCopyWithImpl<$Res> extends _$TweetGeoCopyWithImpl<$Res>
    implements _$$_TweetGeoCopyWith<$Res> {
  __$$_TweetGeoCopyWithImpl(
      _$_TweetGeo _value, $Res Function(_$_TweetGeo) _then)
      : super(_value, (v) => _then(v as _$_TweetGeo));

  @override
  _$_TweetGeo get _value => super._value as _$_TweetGeo;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_TweetGeo(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as TweetGeoCoordinates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetGeo implements _TweetGeo {
  const _$_TweetGeo(
      {@JsonKey(name: 'place_id') required this.placeId,
      required this.coordinates});

  factory _$_TweetGeo.fromJson(Map<String, dynamic> json) =>
      _$$_TweetGeoFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  final TweetGeoCoordinates coordinates;

  @override
  String toString() {
    return 'TweetGeo(placeId: $placeId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetGeo &&
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
  _$$_TweetGeoCopyWith<_$_TweetGeo> get copyWith =>
      __$$_TweetGeoCopyWithImpl<_$_TweetGeo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetGeoToJson(this);
  }
}

abstract class _TweetGeo implements TweetGeo {
  const factory _TweetGeo(
      {@JsonKey(name: 'place_id') required final String placeId,
      required final TweetGeoCoordinates coordinates}) = _$_TweetGeo;

  factory _TweetGeo.fromJson(Map<String, dynamic> json) = _$_TweetGeo.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  @override
  TweetGeoCoordinates get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetGeoCopyWith<_$_TweetGeo> get copyWith =>
      throw _privateConstructorUsedError;
}
