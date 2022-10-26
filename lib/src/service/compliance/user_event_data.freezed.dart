// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEventData _$UserEventDataFromJson(Map<String, dynamic> json) {
  return _UserEventData.fromJson(json);
}

/// @nodoc
mixin _$UserEventData {
  /// The ID of the User triggering a compliance event.
  @JsonKey(name: 'id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEventDataCopyWith<UserEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventDataCopyWith<$Res> {
  factory $UserEventDataCopyWith(
          UserEventData value, $Res Function(UserEventData) then) =
      _$UserEventDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String userId});
}

/// @nodoc
class _$UserEventDataCopyWithImpl<$Res>
    implements $UserEventDataCopyWith<$Res> {
  _$UserEventDataCopyWithImpl(this._value, this._then);

  final UserEventData _value;
  // ignore: unused_field
  final $Res Function(UserEventData) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserEventDataCopyWith<$Res>
    implements $UserEventDataCopyWith<$Res> {
  factory _$$_UserEventDataCopyWith(
          _$_UserEventData value, $Res Function(_$_UserEventData) then) =
      __$$_UserEventDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String userId});
}

/// @nodoc
class __$$_UserEventDataCopyWithImpl<$Res>
    extends _$UserEventDataCopyWithImpl<$Res>
    implements _$$_UserEventDataCopyWith<$Res> {
  __$$_UserEventDataCopyWithImpl(
      _$_UserEventData _value, $Res Function(_$_UserEventData) _then)
      : super(_value, (v) => _then(v as _$_UserEventData));

  @override
  _$_UserEventData get _value => super._value as _$_UserEventData;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$_UserEventData(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEventData implements _UserEventData {
  const _$_UserEventData({@JsonKey(name: 'id') required this.userId});

  factory _$_UserEventData.fromJson(Map<String, dynamic> json) =>
      _$$_UserEventDataFromJson(json);

  /// The ID of the User triggering a compliance event.
  @override
  @JsonKey(name: 'id')
  final String userId;

  @override
  String toString() {
    return 'UserEventData(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventData &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_UserEventDataCopyWith<_$_UserEventData> get copyWith =>
      __$$_UserEventDataCopyWithImpl<_$_UserEventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEventDataToJson(
      this,
    );
  }
}

abstract class _UserEventData implements UserEventData {
  const factory _UserEventData(
      {@JsonKey(name: 'id') required final String userId}) = _$_UserEventData;

  factory _UserEventData.fromJson(Map<String, dynamic> json) =
      _$_UserEventData.fromJson;

  @override

  /// The ID of the User triggering a compliance event.
  @JsonKey(name: 'id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_UserEventDataCopyWith<_$_UserEventData> get copyWith =>
      throw _privateConstructorUsedError;
}
