// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_geo_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitterGeoCoordinates _$TwitterGeoCoordinatesFromJson(
    Map<String, dynamic> json) {
  return _TwitterGeoCoordinates.fromJson(json);
}

/// @nodoc
mixin _$TwitterGeoCoordinates {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitterGeoCoordinatesCopyWith<TwitterGeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterGeoCoordinatesCopyWith<$Res> {
  factory $TwitterGeoCoordinatesCopyWith(TwitterGeoCoordinates value,
          $Res Function(TwitterGeoCoordinates) then) =
      _$TwitterGeoCoordinatesCopyWithImpl<$Res>;
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$TwitterGeoCoordinatesCopyWithImpl<$Res>
    implements $TwitterGeoCoordinatesCopyWith<$Res> {
  _$TwitterGeoCoordinatesCopyWithImpl(this._value, this._then);

  final TwitterGeoCoordinates _value;
  // ignore: unused_field
  final $Res Function(TwitterGeoCoordinates) _then;

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
abstract class _$$_TwitterGeoCoordinatesCopyWith<$Res>
    implements $TwitterGeoCoordinatesCopyWith<$Res> {
  factory _$$_TwitterGeoCoordinatesCopyWith(_$_TwitterGeoCoordinates value,
          $Res Function(_$_TwitterGeoCoordinates) then) =
      __$$_TwitterGeoCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$_TwitterGeoCoordinatesCopyWithImpl<$Res>
    extends _$TwitterGeoCoordinatesCopyWithImpl<$Res>
    implements _$$_TwitterGeoCoordinatesCopyWith<$Res> {
  __$$_TwitterGeoCoordinatesCopyWithImpl(_$_TwitterGeoCoordinates _value,
      $Res Function(_$_TwitterGeoCoordinates) _then)
      : super(_value, (v) => _then(v as _$_TwitterGeoCoordinates));

  @override
  _$_TwitterGeoCoordinates get _value =>
      super._value as _$_TwitterGeoCoordinates;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_TwitterGeoCoordinates(
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
class _$_TwitterGeoCoordinates implements _TwitterGeoCoordinates {
  const _$_TwitterGeoCoordinates(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_TwitterGeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$$_TwitterGeoCoordinatesFromJson(json);

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
    return 'TwitterGeoCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitterGeoCoordinates &&
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
  _$$_TwitterGeoCoordinatesCopyWith<_$_TwitterGeoCoordinates> get copyWith =>
      __$$_TwitterGeoCoordinatesCopyWithImpl<_$_TwitterGeoCoordinates>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitterGeoCoordinatesToJson(this);
  }
}

abstract class _TwitterGeoCoordinates implements TwitterGeoCoordinates {
  const factory _TwitterGeoCoordinates(
      {required final String type,
      required final List<double> coordinates}) = _$_TwitterGeoCoordinates;

  factory _TwitterGeoCoordinates.fromJson(Map<String, dynamic> json) =
      _$_TwitterGeoCoordinates.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TwitterGeoCoordinatesCopyWith<_$_TwitterGeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
