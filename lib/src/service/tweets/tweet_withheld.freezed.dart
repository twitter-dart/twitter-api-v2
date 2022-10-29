// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_withheld.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetWithheld _$TweetWithheldFromJson(Map<String, dynamic> json) {
  return _TweetWithheld.fromJson(json);
}

/// @nodoc
mixin _$TweetWithheld {
  /// Indicates if the content is being withheld for on the basis of
  /// copyright infringement.
  @JsonKey(name: 'copyright')
  bool get dueToCopyright => throw _privateConstructorUsedError;

  /// Provides a list of countries where this content is not available.
  @JsonKey(name: 'country_codes')
  List<WithheldCountry> get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetWithheldCopyWith<TweetWithheld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetWithheldCopyWith<$Res> {
  factory $TweetWithheldCopyWith(
          TweetWithheld value, $Res Function(TweetWithheld) then) =
      _$TweetWithheldCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'copyright') bool dueToCopyright,
      @JsonKey(name: 'country_codes') List<WithheldCountry> countries});
}

/// @nodoc
class _$TweetWithheldCopyWithImpl<$Res>
    implements $TweetWithheldCopyWith<$Res> {
  _$TweetWithheldCopyWithImpl(this._value, this._then);

  final TweetWithheld _value;
  // ignore: unused_field
  final $Res Function(TweetWithheld) _then;

  @override
  $Res call({
    Object? dueToCopyright = freezed,
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      dueToCopyright: dueToCopyright == freezed
          ? _value.dueToCopyright
          : dueToCopyright // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<WithheldCountry>,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetWithheldCopyWith<$Res>
    implements $TweetWithheldCopyWith<$Res> {
  factory _$$_TweetWithheldCopyWith(
          _$_TweetWithheld value, $Res Function(_$_TweetWithheld) then) =
      __$$_TweetWithheldCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'copyright') bool dueToCopyright,
      @JsonKey(name: 'country_codes') List<WithheldCountry> countries});
}

/// @nodoc
class __$$_TweetWithheldCopyWithImpl<$Res>
    extends _$TweetWithheldCopyWithImpl<$Res>
    implements _$$_TweetWithheldCopyWith<$Res> {
  __$$_TweetWithheldCopyWithImpl(
      _$_TweetWithheld _value, $Res Function(_$_TweetWithheld) _then)
      : super(_value, (v) => _then(v as _$_TweetWithheld));

  @override
  _$_TweetWithheld get _value => super._value as _$_TweetWithheld;

  @override
  $Res call({
    Object? dueToCopyright = freezed,
    Object? countries = freezed,
  }) {
    return _then(_$_TweetWithheld(
      dueToCopyright: dueToCopyright == freezed
          ? _value.dueToCopyright
          : dueToCopyright // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<WithheldCountry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetWithheld implements _TweetWithheld {
  const _$_TweetWithheld(
      {@JsonKey(name: 'copyright')
          required this.dueToCopyright,
      @JsonKey(name: 'country_codes')
          required final List<WithheldCountry> countries})
      : _countries = countries;

  factory _$_TweetWithheld.fromJson(Map<String, dynamic> json) =>
      _$$_TweetWithheldFromJson(json);

  /// Indicates if the content is being withheld for on the basis of
  /// copyright infringement.
  @override
  @JsonKey(name: 'copyright')
  final bool dueToCopyright;

  /// Provides a list of countries where this content is not available.
  final List<WithheldCountry> _countries;

  /// Provides a list of countries where this content is not available.
  @override
  @JsonKey(name: 'country_codes')
  List<WithheldCountry> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'TweetWithheld(dueToCopyright: $dueToCopyright, countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetWithheld &&
            const DeepCollectionEquality()
                .equals(other.dueToCopyright, dueToCopyright) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dueToCopyright),
      const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  _$$_TweetWithheldCopyWith<_$_TweetWithheld> get copyWith =>
      __$$_TweetWithheldCopyWithImpl<_$_TweetWithheld>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetWithheldToJson(
      this,
    );
  }
}

abstract class _TweetWithheld implements TweetWithheld {
  const factory _TweetWithheld(
      {@JsonKey(name: 'copyright')
          required final bool dueToCopyright,
      @JsonKey(name: 'country_codes')
          required final List<WithheldCountry> countries}) = _$_TweetWithheld;

  factory _TweetWithheld.fromJson(Map<String, dynamic> json) =
      _$_TweetWithheld.fromJson;

  @override

  /// Indicates if the content is being withheld for on the basis of
  /// copyright infringement.
  @JsonKey(name: 'copyright')
  bool get dueToCopyright;
  @override

  /// Provides a list of countries where this content is not available.
  @JsonKey(name: 'country_codes')
  List<WithheldCountry> get countries;
  @override
  @JsonKey(ignore: true)
  _$$_TweetWithheldCopyWith<_$_TweetWithheld> get copyWith =>
      throw _privateConstructorUsedError;
}
