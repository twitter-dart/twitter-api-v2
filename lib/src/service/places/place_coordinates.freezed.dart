// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceCoordinates _$PlaceCoordinatesFromJson(Map<String, dynamic> json) {
  return _PlaceCoordinates.fromJson(json);
}

/// @nodoc
mixin _$PlaceCoordinates {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCoordinatesCopyWith<PlaceCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCoordinatesCopyWith<$Res> {
  factory $PlaceCoordinatesCopyWith(
          PlaceCoordinates value, $Res Function(PlaceCoordinates) then) =
      _$PlaceCoordinatesCopyWithImpl<$Res>;
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$PlaceCoordinatesCopyWithImpl<$Res>
    implements $PlaceCoordinatesCopyWith<$Res> {
  _$PlaceCoordinatesCopyWithImpl(this._value, this._then);

  final PlaceCoordinates _value;
  // ignore: unused_field
  final $Res Function(PlaceCoordinates) _then;

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
abstract class _$$_PlaceCoordinatesCopyWith<$Res>
    implements $PlaceCoordinatesCopyWith<$Res> {
  factory _$$_PlaceCoordinatesCopyWith(
          _$_PlaceCoordinates value, $Res Function(_$_PlaceCoordinates) then) =
      __$$_PlaceCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$_PlaceCoordinatesCopyWithImpl<$Res>
    extends _$PlaceCoordinatesCopyWithImpl<$Res>
    implements _$$_PlaceCoordinatesCopyWith<$Res> {
  __$$_PlaceCoordinatesCopyWithImpl(
      _$_PlaceCoordinates _value, $Res Function(_$_PlaceCoordinates) _then)
      : super(_value, (v) => _then(v as _$_PlaceCoordinates));

  @override
  _$_PlaceCoordinates get _value => super._value as _$_PlaceCoordinates;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_PlaceCoordinates(
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
class _$_PlaceCoordinates implements _PlaceCoordinates {
  const _$_PlaceCoordinates(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_PlaceCoordinates.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceCoordinatesFromJson(json);

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
    return 'PlaceCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceCoordinates &&
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
  _$$_PlaceCoordinatesCopyWith<_$_PlaceCoordinates> get copyWith =>
      __$$_PlaceCoordinatesCopyWithImpl<_$_PlaceCoordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceCoordinatesToJson(this);
  }
}

abstract class _PlaceCoordinates implements PlaceCoordinates {
  const factory _PlaceCoordinates(
      {required final String type,
      required final List<double> coordinates}) = _$_PlaceCoordinates;

  factory _PlaceCoordinates.fromJson(Map<String, dynamic> json) =
      _$_PlaceCoordinates.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCoordinatesCopyWith<_$_PlaceCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
