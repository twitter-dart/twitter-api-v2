// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetTag _$TweetTagFromJson(Map<String, dynamic> json) {
  return _TweetTag.fromJson(json);
}

/// @nodoc
mixin _$TweetTag {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetTagCopyWith<TweetTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetTagCopyWith<$Res> {
  factory $TweetTagCopyWith(TweetTag value, $Res Function(TweetTag) then) =
      _$TweetTagCopyWithImpl<$Res>;
  $Res call({int start, int end, String tag});
}

/// @nodoc
class _$TweetTagCopyWithImpl<$Res> implements $TweetTagCopyWith<$Res> {
  _$TweetTagCopyWithImpl(this._value, this._then);

  final TweetTag _value;
  // ignore: unused_field
  final $Res Function(TweetTag) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetTagCopyWith<$Res> implements $TweetTagCopyWith<$Res> {
  factory _$$_TweetTagCopyWith(
          _$_TweetTag value, $Res Function(_$_TweetTag) then) =
      __$$_TweetTagCopyWithImpl<$Res>;
  @override
  $Res call({int start, int end, String tag});
}

/// @nodoc
class __$$_TweetTagCopyWithImpl<$Res> extends _$TweetTagCopyWithImpl<$Res>
    implements _$$_TweetTagCopyWith<$Res> {
  __$$_TweetTagCopyWithImpl(
      _$_TweetTag _value, $Res Function(_$_TweetTag) _then)
      : super(_value, (v) => _then(v as _$_TweetTag));

  @override
  _$_TweetTag get _value => super._value as _$_TweetTag;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$_TweetTag(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetTag implements _TweetTag {
  const _$_TweetTag(
      {required this.start, required this.end, required this.tag});

  factory _$_TweetTag.fromJson(Map<String, dynamic> json) =>
      _$$_TweetTagFromJson(json);

  @override
  final int start;
  @override
  final int end;
  @override
  final String tag;

  @override
  String toString() {
    return 'TweetTag(start: $start, end: $end, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetTag &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_TweetTagCopyWith<_$_TweetTag> get copyWith =>
      __$$_TweetTagCopyWithImpl<_$_TweetTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetTagToJson(this);
  }
}

abstract class _TweetTag implements TweetTag {
  const factory _TweetTag(
      {required final int start,
      required final int end,
      required final String tag}) = _$_TweetTag;

  factory _TweetTag.fromJson(Map<String, dynamic> json) = _$_TweetTag.fromJson;

  @override
  int get start => throw _privateConstructorUsedError;
  @override
  int get end => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetTagCopyWith<_$_TweetTag> get copyWith =>
      throw _privateConstructorUsedError;
}
