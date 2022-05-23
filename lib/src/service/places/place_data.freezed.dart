// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceData _$PlaceDataFromJson(Map<String, dynamic> json) {
  return _PlaceData.fromJson(json);
}

/// @nodoc
mixin _$PlaceData {
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  PlaceCoordinates? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDataCopyWith<PlaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDataCopyWith<$Res> {
  factory $PlaceDataCopyWith(PlaceData value, $Res Function(PlaceData) then) =
      _$PlaceDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      PlaceCoordinates? coordinates});

  $PlaceCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$PlaceDataCopyWithImpl<$Res> implements $PlaceDataCopyWith<$Res> {
  _$PlaceDataCopyWithImpl(this._value, this._then);

  final PlaceData _value;
  // ignore: unused_field
  final $Res Function(PlaceData) _then;

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
              as PlaceCoordinates?,
    ));
  }

  @override
  $PlaceCoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $PlaceCoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceDataCopyWith<$Res> implements $PlaceDataCopyWith<$Res> {
  factory _$$_PlaceDataCopyWith(
          _$_PlaceData value, $Res Function(_$_PlaceData) then) =
      __$$_PlaceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      PlaceCoordinates? coordinates});

  @override
  $PlaceCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$_PlaceDataCopyWithImpl<$Res> extends _$PlaceDataCopyWithImpl<$Res>
    implements _$$_PlaceDataCopyWith<$Res> {
  __$$_PlaceDataCopyWithImpl(
      _$_PlaceData _value, $Res Function(_$_PlaceData) _then)
      : super(_value, (v) => _then(v as _$_PlaceData));

  @override
  _$_PlaceData get _value => super._value as _$_PlaceData;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_PlaceData(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceData implements _PlaceData {
  const _$_PlaceData(
      {@JsonKey(name: 'place_id') required this.placeId,
      required this.coordinates});

  factory _$_PlaceData.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDataFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  final PlaceCoordinates? coordinates;

  @override
  String toString() {
    return 'PlaceData(placeId: $placeId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceData &&
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
  _$$_PlaceDataCopyWith<_$_PlaceData> get copyWith =>
      __$$_PlaceDataCopyWithImpl<_$_PlaceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDataToJson(this);
  }
}

abstract class _PlaceData implements PlaceData {
  const factory _PlaceData(
      {@JsonKey(name: 'place_id') required final String placeId,
      required final PlaceCoordinates? coordinates}) = _$_PlaceData;

  factory _PlaceData.fromJson(Map<String, dynamic> json) =
      _$_PlaceData.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  @override
  PlaceCoordinates? get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDataCopyWith<_$_PlaceData> get copyWith =>
      throw _privateConstructorUsedError;
}
