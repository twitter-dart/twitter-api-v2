// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetMeta _$TweetMetaFromJson(Map<String, dynamic> json) {
  return _TweetMeta.fromJson(json);
}

/// @nodoc
mixin _$TweetMeta {
  @JsonKey(name: 'newest_id')
  String get newestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'oldest_id')
  String get oldestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_count')
  int get resultCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetMetaCopyWith<TweetMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetMetaCopyWith<$Res> {
  factory $TweetMetaCopyWith(TweetMeta value, $Res Function(TweetMeta) then) =
      _$TweetMetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'newest_id') String newestId,
      @JsonKey(name: 'oldest_id') String oldestId,
      @JsonKey(name: 'result_count') int resultCount});
}

/// @nodoc
class _$TweetMetaCopyWithImpl<$Res> implements $TweetMetaCopyWith<$Res> {
  _$TweetMetaCopyWithImpl(this._value, this._then);

  final TweetMeta _value;
  // ignore: unused_field
  final $Res Function(TweetMeta) _then;

  @override
  $Res call({
    Object? newestId = freezed,
    Object? oldestId = freezed,
    Object? resultCount = freezed,
  }) {
    return _then(_value.copyWith(
      newestId: newestId == freezed
          ? _value.newestId
          : newestId // ignore: cast_nullable_to_non_nullable
              as String,
      oldestId: oldestId == freezed
          ? _value.oldestId
          : oldestId // ignore: cast_nullable_to_non_nullable
              as String,
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TweetMetaCopyWith<$Res> implements $TweetMetaCopyWith<$Res> {
  factory _$TweetMetaCopyWith(
          _TweetMeta value, $Res Function(_TweetMeta) then) =
      __$TweetMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'newest_id') String newestId,
      @JsonKey(name: 'oldest_id') String oldestId,
      @JsonKey(name: 'result_count') int resultCount});
}

/// @nodoc
class __$TweetMetaCopyWithImpl<$Res> extends _$TweetMetaCopyWithImpl<$Res>
    implements _$TweetMetaCopyWith<$Res> {
  __$TweetMetaCopyWithImpl(_TweetMeta _value, $Res Function(_TweetMeta) _then)
      : super(_value, (v) => _then(v as _TweetMeta));

  @override
  _TweetMeta get _value => super._value as _TweetMeta;

  @override
  $Res call({
    Object? newestId = freezed,
    Object? oldestId = freezed,
    Object? resultCount = freezed,
  }) {
    return _then(_TweetMeta(
      newestId: newestId == freezed
          ? _value.newestId
          : newestId // ignore: cast_nullable_to_non_nullable
              as String,
      oldestId: oldestId == freezed
          ? _value.oldestId
          : oldestId // ignore: cast_nullable_to_non_nullable
              as String,
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetMeta implements _TweetMeta {
  const _$_TweetMeta(
      {@JsonKey(name: 'newest_id') required this.newestId,
      @JsonKey(name: 'oldest_id') required this.oldestId,
      @JsonKey(name: 'result_count') required this.resultCount});

  factory _$_TweetMeta.fromJson(Map<String, dynamic> json) =>
      _$$_TweetMetaFromJson(json);

  @override
  @JsonKey(name: 'newest_id')
  final String newestId;
  @override
  @JsonKey(name: 'oldest_id')
  final String oldestId;
  @override
  @JsonKey(name: 'result_count')
  final int resultCount;

  @override
  String toString() {
    return 'TweetMeta(newestId: $newestId, oldestId: $oldestId, resultCount: $resultCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TweetMeta &&
            const DeepCollectionEquality().equals(other.newestId, newestId) &&
            const DeepCollectionEquality().equals(other.oldestId, oldestId) &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newestId),
      const DeepCollectionEquality().hash(oldestId),
      const DeepCollectionEquality().hash(resultCount));

  @JsonKey(ignore: true)
  @override
  _$TweetMetaCopyWith<_TweetMeta> get copyWith =>
      __$TweetMetaCopyWithImpl<_TweetMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetMetaToJson(this);
  }
}

abstract class _TweetMeta implements TweetMeta {
  const factory _TweetMeta(
          {@JsonKey(name: 'newest_id') required final String newestId,
          @JsonKey(name: 'oldest_id') required final String oldestId,
          @JsonKey(name: 'result_count') required final int resultCount}) =
      _$_TweetMeta;

  factory _TweetMeta.fromJson(Map<String, dynamic> json) =
      _$_TweetMeta.fromJson;

  @override
  @JsonKey(name: 'newest_id')
  String get newestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'oldest_id')
  String get oldestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'result_count')
  int get resultCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TweetMetaCopyWith<_TweetMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
