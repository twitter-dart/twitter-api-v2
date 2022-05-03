// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_count_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetCountMeta _$TweetCountMetaFromJson(Map<String, dynamic> json) {
  return _TweetCountMeta.fromJson(json);
}

/// @nodoc
mixin _$TweetCountMeta {
  @JsonKey(name: 'total_tweet_count')
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetCountMetaCopyWith<TweetCountMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCountMetaCopyWith<$Res> {
  factory $TweetCountMetaCopyWith(
          TweetCountMeta value, $Res Function(TweetCountMeta) then) =
      _$TweetCountMetaCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'total_tweet_count') int total});
}

/// @nodoc
class _$TweetCountMetaCopyWithImpl<$Res>
    implements $TweetCountMetaCopyWith<$Res> {
  _$TweetCountMetaCopyWithImpl(this._value, this._then);

  final TweetCountMeta _value;
  // ignore: unused_field
  final $Res Function(TweetCountMeta) _then;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TweetCountMetaCopyWith<$Res>
    implements $TweetCountMetaCopyWith<$Res> {
  factory _$TweetCountMetaCopyWith(
          _TweetCountMeta value, $Res Function(_TweetCountMeta) then) =
      __$TweetCountMetaCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'total_tweet_count') int total});
}

/// @nodoc
class __$TweetCountMetaCopyWithImpl<$Res>
    extends _$TweetCountMetaCopyWithImpl<$Res>
    implements _$TweetCountMetaCopyWith<$Res> {
  __$TweetCountMetaCopyWithImpl(
      _TweetCountMeta _value, $Res Function(_TweetCountMeta) _then)
      : super(_value, (v) => _then(v as _TweetCountMeta));

  @override
  _TweetCountMeta get _value => super._value as _TweetCountMeta;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_TweetCountMeta(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetCountMeta implements _TweetCountMeta {
  const _$_TweetCountMeta(
      {@JsonKey(name: 'total_tweet_count') required this.total});

  factory _$_TweetCountMeta.fromJson(Map<String, dynamic> json) =>
      _$$_TweetCountMetaFromJson(json);

  @override
  @JsonKey(name: 'total_tweet_count')
  final int total;

  @override
  String toString() {
    return 'TweetCountMeta(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TweetCountMeta &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$TweetCountMetaCopyWith<_TweetCountMeta> get copyWith =>
      __$TweetCountMetaCopyWithImpl<_TweetCountMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetCountMetaToJson(this);
  }
}

abstract class _TweetCountMeta implements TweetCountMeta {
  const factory _TweetCountMeta(
          {@JsonKey(name: 'total_tweet_count') required final int total}) =
      _$_TweetCountMeta;

  factory _TweetCountMeta.fromJson(Map<String, dynamic> json) =
      _$_TweetCountMeta.fromJson;

  @override
  @JsonKey(name: 'total_tweet_count')
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TweetCountMetaCopyWith<_TweetCountMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
