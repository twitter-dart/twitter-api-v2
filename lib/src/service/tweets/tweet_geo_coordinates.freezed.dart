// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_geo_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetGeoCoordinates _$TweetGeoCoordinatesFromJson(Map<String, dynamic> json) {
  return _TweetGeoCoordinates.fromJson(json);
}

/// @nodoc
mixin _$TweetGeoCoordinates {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetGeoCoordinatesCopyWith<TweetGeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetGeoCoordinatesCopyWith<$Res> {
  factory $TweetGeoCoordinatesCopyWith(
          TweetGeoCoordinates value, $Res Function(TweetGeoCoordinates) then) =
      _$TweetGeoCoordinatesCopyWithImpl<$Res>;
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$TweetGeoCoordinatesCopyWithImpl<$Res>
    implements $TweetGeoCoordinatesCopyWith<$Res> {
  _$TweetGeoCoordinatesCopyWithImpl(this._value, this._then);

  final TweetGeoCoordinates _value;
  // ignore: unused_field
  final $Res Function(TweetGeoCoordinates) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetGeoCoordinatesCopyWith<$Res>
    implements $TweetGeoCoordinatesCopyWith<$Res> {
  factory _$$_TweetGeoCoordinatesCopyWith(_$_TweetGeoCoordinates value,
          $Res Function(_$_TweetGeoCoordinates) then) =
      __$$_TweetGeoCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$_TweetGeoCoordinatesCopyWithImpl<$Res>
    extends _$TweetGeoCoordinatesCopyWithImpl<$Res>
    implements _$$_TweetGeoCoordinatesCopyWith<$Res> {
  __$$_TweetGeoCoordinatesCopyWithImpl(_$_TweetGeoCoordinates _value,
      $Res Function(_$_TweetGeoCoordinates) _then)
      : super(_value, (v) => _then(v as _$_TweetGeoCoordinates));

  @override
  _$_TweetGeoCoordinates get _value => super._value as _$_TweetGeoCoordinates;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_TweetGeoCoordinates(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetGeoCoordinates implements _TweetGeoCoordinates {
  const _$_TweetGeoCoordinates(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_TweetGeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$$_TweetGeoCoordinatesFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'TweetGeoCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetGeoCoordinates &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_TweetGeoCoordinatesCopyWith<_$_TweetGeoCoordinates> get copyWith =>
      __$$_TweetGeoCoordinatesCopyWithImpl<_$_TweetGeoCoordinates>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetGeoCoordinatesToJson(this);
  }
}

abstract class _TweetGeoCoordinates implements TweetGeoCoordinates {
  const factory _TweetGeoCoordinates(
      {required final String type,
      required final List<double> coordinates}) = _$_TweetGeoCoordinates;

  factory _TweetGeoCoordinates.fromJson(Map<String, dynamic> json) =
      _$_TweetGeoCoordinates.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetGeoCoordinatesCopyWith<_$_TweetGeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
