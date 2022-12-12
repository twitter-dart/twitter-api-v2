// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'oauth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OAuthResponse _$OAuthResponseFromJson(Map<String, dynamic> json) {
  return _OAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$OAuthResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  @DateTimeConverter()
  DateTime get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuthResponseCopyWith<OAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthResponseCopyWith<$Res> {
  factory $OAuthResponseCopyWith(
          OAuthResponse value, $Res Function(OAuthResponse) then) =
      _$OAuthResponseCopyWithImpl<$Res>;
  $Res call(
      {String accessToken,
      String refreshToken,
      @JsonKey(name: 'scope') @ScopeConverter() List<Scope> scopes,
      @JsonKey(name: 'expires_in') @DateTimeConverter() DateTime expiresAt});
}

/// @nodoc
class _$OAuthResponseCopyWithImpl<$Res>
    implements $OAuthResponseCopyWith<$Res> {
  _$OAuthResponseCopyWithImpl(this._value, this._then);

  final OAuthResponse _value;
  // ignore: unused_field
  final $Res Function(OAuthResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? scopes = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: scopes == freezed
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<Scope>,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_OAuthResponseCopyWith<$Res>
    implements $OAuthResponseCopyWith<$Res> {
  factory _$$_OAuthResponseCopyWith(
          _$_OAuthResponse value, $Res Function(_$_OAuthResponse) then) =
      __$$_OAuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accessToken,
      String refreshToken,
      @JsonKey(name: 'scope') @ScopeConverter() List<Scope> scopes,
      @JsonKey(name: 'expires_in') @DateTimeConverter() DateTime expiresAt});
}

/// @nodoc
class __$$_OAuthResponseCopyWithImpl<$Res>
    extends _$OAuthResponseCopyWithImpl<$Res>
    implements _$$_OAuthResponseCopyWith<$Res> {
  __$$_OAuthResponseCopyWithImpl(
      _$_OAuthResponse _value, $Res Function(_$_OAuthResponse) _then)
      : super(_value, (v) => _then(v as _$_OAuthResponse));

  @override
  _$_OAuthResponse get _value => super._value as _$_OAuthResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? scopes = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$_OAuthResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: scopes == freezed
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<Scope>,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OAuthResponse extends _OAuthResponse {
  const _$_OAuthResponse(
      {required this.accessToken,
      required this.refreshToken,
      @JsonKey(name: 'scope')
      @ScopeConverter()
          required final List<Scope> scopes,
      @JsonKey(name: 'expires_in')
      @DateTimeConverter()
          required this.expiresAt})
      : _scopes = scopes,
        super._();

  factory _$_OAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OAuthResponseFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  final List<Scope> _scopes;
  @override
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  @override
  @JsonKey(name: 'expires_in')
  @DateTimeConverter()
  final DateTime expiresAt;

  @override
  String toString() {
    return 'OAuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, scopes: $scopes, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuthResponse &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(_scopes),
      const DeepCollectionEquality().hash(expiresAt));

  @JsonKey(ignore: true)
  @override
  _$$_OAuthResponseCopyWith<_$_OAuthResponse> get copyWith =>
      __$$_OAuthResponseCopyWithImpl<_$_OAuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OAuthResponseToJson(
      this,
    );
  }
}

abstract class _OAuthResponse extends OAuthResponse {
  const factory _OAuthResponse(
      {required final String accessToken,
      required final String refreshToken,
      @JsonKey(name: 'scope')
      @ScopeConverter()
          required final List<Scope> scopes,
      @JsonKey(name: 'expires_in')
      @DateTimeConverter()
          required final DateTime expiresAt}) = _$_OAuthResponse;
  const _OAuthResponse._() : super._();

  factory _OAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_OAuthResponse.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes;
  @override
  @JsonKey(name: 'expires_in')
  @DateTimeConverter()
  DateTime get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthResponseCopyWith<_$_OAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
