// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_withheld.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWithheld _$UserWithheldFromJson(Map<String, dynamic> json) {
  return _UserWithheld.fromJson(json);
}

/// @nodoc
mixin _$UserWithheld {
  /// Provides a list of countries where this user is not available.
  @JsonKey(name: 'country_codes')
  List<Country> get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithheldCopyWith<UserWithheld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithheldCopyWith<$Res> {
  factory $UserWithheldCopyWith(
          UserWithheld value, $Res Function(UserWithheld) then) =
      _$UserWithheldCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'country_codes') List<Country> countries});
}

/// @nodoc
class _$UserWithheldCopyWithImpl<$Res> implements $UserWithheldCopyWith<$Res> {
  _$UserWithheldCopyWithImpl(this._value, this._then);

  final UserWithheld _value;
  // ignore: unused_field
  final $Res Function(UserWithheld) _then;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserWithheldCopyWith<$Res>
    implements $UserWithheldCopyWith<$Res> {
  factory _$$_UserWithheldCopyWith(
          _$_UserWithheld value, $Res Function(_$_UserWithheld) then) =
      __$$_UserWithheldCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'country_codes') List<Country> countries});
}

/// @nodoc
class __$$_UserWithheldCopyWithImpl<$Res>
    extends _$UserWithheldCopyWithImpl<$Res>
    implements _$$_UserWithheldCopyWith<$Res> {
  __$$_UserWithheldCopyWithImpl(
      _$_UserWithheld _value, $Res Function(_$_UserWithheld) _then)
      : super(_value, (v) => _then(v as _$_UserWithheld));

  @override
  _$_UserWithheld get _value => super._value as _$_UserWithheld;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_$_UserWithheld(
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWithheld implements _UserWithheld {
  const _$_UserWithheld(
      {@JsonKey(name: 'country_codes') required final List<Country> countries})
      : _countries = countries;

  factory _$_UserWithheld.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithheldFromJson(json);

  /// Provides a list of countries where this user is not available.
  final List<Country> _countries;

  /// Provides a list of countries where this user is not available.
  @override
  @JsonKey(name: 'country_codes')
  List<Country> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'UserWithheld(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithheld &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  _$$_UserWithheldCopyWith<_$_UserWithheld> get copyWith =>
      __$$_UserWithheldCopyWithImpl<_$_UserWithheld>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithheldToJson(
      this,
    );
  }
}

abstract class _UserWithheld implements UserWithheld {
  const factory _UserWithheld(
      {@JsonKey(name: 'country_codes')
          required final List<Country> countries}) = _$_UserWithheld;

  factory _UserWithheld.fromJson(Map<String, dynamic> json) =
      _$_UserWithheld.fromJson;

  @override

  /// Provides a list of countries where this user is not available.
  @JsonKey(name: 'country_codes')
  List<Country> get countries;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithheldCopyWith<_$_UserWithheld> get copyWith =>
      throw _privateConstructorUsedError;
}
