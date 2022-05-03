// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceData _$SpaceDataFromJson(Map<String, dynamic> json) {
  return _SpaceData.fromJson(json);
}

/// @nodoc
mixin _$SpaceData {
  String get id => throw _privateConstructorUsedError;
  SpaceState? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceDataCopyWith<SpaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceDataCopyWith<$Res> {
  factory $SpaceDataCopyWith(SpaceData value, $Res Function(SpaceData) then) =
      _$SpaceDataCopyWithImpl<$Res>;
  $Res call({String id, SpaceState? state});
}

/// @nodoc
class _$SpaceDataCopyWithImpl<$Res> implements $SpaceDataCopyWith<$Res> {
  _$SpaceDataCopyWithImpl(this._value, this._then);

  final SpaceData _value;
  // ignore: unused_field
  final $Res Function(SpaceData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SpaceState?,
    ));
  }
}

/// @nodoc
abstract class _$SpaceDataCopyWith<$Res> implements $SpaceDataCopyWith<$Res> {
  factory _$SpaceDataCopyWith(
          _SpaceData value, $Res Function(_SpaceData) then) =
      __$SpaceDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, SpaceState? state});
}

/// @nodoc
class __$SpaceDataCopyWithImpl<$Res> extends _$SpaceDataCopyWithImpl<$Res>
    implements _$SpaceDataCopyWith<$Res> {
  __$SpaceDataCopyWithImpl(_SpaceData _value, $Res Function(_SpaceData) _then)
      : super(_value, (v) => _then(v as _SpaceData));

  @override
  _SpaceData get _value => super._value as _SpaceData;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
  }) {
    return _then(_SpaceData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SpaceState?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpaceData implements _SpaceData {
  const _$_SpaceData({required this.id, this.state});

  factory _$_SpaceData.fromJson(Map<String, dynamic> json) =>
      _$$_SpaceDataFromJson(json);

  @override
  final String id;
  @override
  final SpaceState? state;

  @override
  String toString() {
    return 'SpaceData(id: $id, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$SpaceDataCopyWith<_SpaceData> get copyWith =>
      __$SpaceDataCopyWithImpl<_SpaceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpaceDataToJson(this);
  }
}

abstract class _SpaceData implements SpaceData {
  const factory _SpaceData(
      {required final String id, final SpaceState? state}) = _$_SpaceData;

  factory _SpaceData.fromJson(Map<String, dynamic> json) =
      _$_SpaceData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  SpaceState? get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpaceDataCopyWith<_SpaceData> get copyWith =>
      throw _privateConstructorUsedError;
}
