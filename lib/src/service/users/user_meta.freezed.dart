// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMeta _$UserMetaFromJson(Map<String, dynamic> json) {
  return _UserMeta.fromJson(json);
}

/// @nodoc
mixin _$UserMeta {
  @JsonKey(name: 'result_count')
  int get resultCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_token')
  String? get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_token')
  String? get previousToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMetaCopyWith<UserMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetaCopyWith<$Res> {
  factory $UserMetaCopyWith(UserMeta value, $Res Function(UserMeta) then) =
      _$UserMetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result_count') int resultCount,
      @JsonKey(name: 'next_token') String? nextToken,
      @JsonKey(name: 'previous_token') String? previousToken});
}

/// @nodoc
class _$UserMetaCopyWithImpl<$Res> implements $UserMetaCopyWith<$Res> {
  _$UserMetaCopyWithImpl(this._value, this._then);

  final UserMeta _value;
  // ignore: unused_field
  final $Res Function(UserMeta) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: previousToken == freezed
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserMetaCopyWith<$Res> implements $UserMetaCopyWith<$Res> {
  factory _$UserMetaCopyWith(_UserMeta value, $Res Function(_UserMeta) then) =
      __$UserMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result_count') int resultCount,
      @JsonKey(name: 'next_token') String? nextToken,
      @JsonKey(name: 'previous_token') String? previousToken});
}

/// @nodoc
class __$UserMetaCopyWithImpl<$Res> extends _$UserMetaCopyWithImpl<$Res>
    implements _$UserMetaCopyWith<$Res> {
  __$UserMetaCopyWithImpl(_UserMeta _value, $Res Function(_UserMeta) _then)
      : super(_value, (v) => _then(v as _UserMeta));

  @override
  _UserMeta get _value => super._value as _UserMeta;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_UserMeta(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: previousToken == freezed
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMeta implements _UserMeta {
  const _$_UserMeta(
      {@JsonKey(name: 'result_count') required this.resultCount,
      @JsonKey(name: 'next_token') this.nextToken,
      @JsonKey(name: 'previous_token') this.previousToken});

  factory _$_UserMeta.fromJson(Map<String, dynamic> json) =>
      _$$_UserMetaFromJson(json);

  @override
  @JsonKey(name: 'result_count')
  final int resultCount;
  @override
  @JsonKey(name: 'next_token')
  final String? nextToken;
  @override
  @JsonKey(name: 'previous_token')
  final String? previousToken;

  @override
  String toString() {
    return 'UserMeta(resultCount: $resultCount, nextToken: $nextToken, previousToken: $previousToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserMeta &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken) &&
            const DeepCollectionEquality()
                .equals(other.previousToken, previousToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(nextToken),
      const DeepCollectionEquality().hash(previousToken));

  @JsonKey(ignore: true)
  @override
  _$UserMetaCopyWith<_UserMeta> get copyWith =>
      __$UserMetaCopyWithImpl<_UserMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMetaToJson(this);
  }
}

abstract class _UserMeta implements UserMeta {
  const factory _UserMeta(
          {@JsonKey(name: 'result_count') required final int resultCount,
          @JsonKey(name: 'next_token') final String? nextToken,
          @JsonKey(name: 'previous_token') final String? previousToken}) =
      _$_UserMeta;

  factory _UserMeta.fromJson(Map<String, dynamic> json) = _$_UserMeta.fromJson;

  @override
  @JsonKey(name: 'result_count')
  int get resultCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next_token')
  String? get nextToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previous_token')
  String? get previousToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserMetaCopyWith<_UserMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
