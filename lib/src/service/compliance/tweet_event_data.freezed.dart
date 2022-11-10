// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetEventData _$TweetEventDataFromJson(Map<String, dynamic> json) {
  return _TweetEventData.fromJson(json);
}

/// @nodoc
mixin _$TweetEventData {
  /// The ID of the Tweet triggering a compliance event.
  @JsonKey(name: 'id')
  String get tweetId => throw _privateConstructorUsedError;

  /// The ID of the author of a Tweet triggering a compliance event.
  String? get authorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetEventDataCopyWith<TweetEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEventDataCopyWith<$Res> {
  factory $TweetEventDataCopyWith(
          TweetEventData value, $Res Function(TweetEventData) then) =
      _$TweetEventDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String tweetId, String? authorId});
}

/// @nodoc
class _$TweetEventDataCopyWithImpl<$Res>
    implements $TweetEventDataCopyWith<$Res> {
  _$TweetEventDataCopyWithImpl(this._value, this._then);

  final TweetEventData _value;
  // ignore: unused_field
  final $Res Function(TweetEventData) _then;

  @override
  $Res call({
    Object? tweetId = freezed,
    Object? authorId = freezed,
  }) {
    return _then(_value.copyWith(
      tweetId: tweetId == freezed
          ? _value.tweetId
          : tweetId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetEventDataCopyWith<$Res>
    implements $TweetEventDataCopyWith<$Res> {
  factory _$$_TweetEventDataCopyWith(
          _$_TweetEventData value, $Res Function(_$_TweetEventData) then) =
      __$$_TweetEventDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String tweetId, String? authorId});
}

/// @nodoc
class __$$_TweetEventDataCopyWithImpl<$Res>
    extends _$TweetEventDataCopyWithImpl<$Res>
    implements _$$_TweetEventDataCopyWith<$Res> {
  __$$_TweetEventDataCopyWithImpl(
      _$_TweetEventData _value, $Res Function(_$_TweetEventData) _then)
      : super(_value, (v) => _then(v as _$_TweetEventData));

  @override
  _$_TweetEventData get _value => super._value as _$_TweetEventData;

  @override
  $Res call({
    Object? tweetId = freezed,
    Object? authorId = freezed,
  }) {
    return _then(_$_TweetEventData(
      tweetId: tweetId == freezed
          ? _value.tweetId
          : tweetId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetEventData implements _TweetEventData {
  const _$_TweetEventData(
      {@JsonKey(name: 'id') required this.tweetId, this.authorId});

  factory _$_TweetEventData.fromJson(Map<String, dynamic> json) =>
      _$$_TweetEventDataFromJson(json);

  /// The ID of the Tweet triggering a compliance event.
  @override
  @JsonKey(name: 'id')
  final String tweetId;

  /// The ID of the author of a Tweet triggering a compliance event.
  @override
  final String? authorId;

  @override
  String toString() {
    return 'TweetEventData(tweetId: $tweetId, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetEventData &&
            const DeepCollectionEquality().equals(other.tweetId, tweetId) &&
            const DeepCollectionEquality().equals(other.authorId, authorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tweetId),
      const DeepCollectionEquality().hash(authorId));

  @JsonKey(ignore: true)
  @override
  _$$_TweetEventDataCopyWith<_$_TweetEventData> get copyWith =>
      __$$_TweetEventDataCopyWithImpl<_$_TweetEventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetEventDataToJson(
      this,
    );
  }
}

abstract class _TweetEventData implements TweetEventData {
  const factory _TweetEventData(
      {@JsonKey(name: 'id') required final String tweetId,
      final String? authorId}) = _$_TweetEventData;

  factory _TweetEventData.fromJson(Map<String, dynamic> json) =
      _$_TweetEventData.fromJson;

  @override

  /// The ID of the Tweet triggering a compliance event.
  @JsonKey(name: 'id')
  String get tweetId;
  @override

  /// The ID of the author of a Tweet triggering a compliance event.
  String? get authorId;
  @override
  @JsonKey(ignore: true)
  _$$_TweetEventDataCopyWith<_$_TweetEventData> get copyWith =>
      throw _privateConstructorUsedError;
}
