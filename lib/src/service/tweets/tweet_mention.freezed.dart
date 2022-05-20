// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_mention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetMention _$TweetMentionFromJson(Map<String, dynamic> json) {
  return _TweetMention.fromJson(json);
}

/// @nodoc
mixin _$TweetMention {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetMentionCopyWith<TweetMention> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetMentionCopyWith<$Res> {
  factory $TweetMentionCopyWith(
          TweetMention value, $Res Function(TweetMention) then) =
      _$TweetMentionCopyWithImpl<$Res>;
  $Res call({String id, String username, int start, int end});
}

/// @nodoc
class _$TweetMentionCopyWithImpl<$Res> implements $TweetMentionCopyWith<$Res> {
  _$TweetMentionCopyWithImpl(this._value, this._then);

  final TweetMention _value;
  // ignore: unused_field
  final $Res Function(TweetMention) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetMentionCopyWith<$Res>
    implements $TweetMentionCopyWith<$Res> {
  factory _$$_TweetMentionCopyWith(
          _$_TweetMention value, $Res Function(_$_TweetMention) then) =
      __$$_TweetMentionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, int start, int end});
}

/// @nodoc
class __$$_TweetMentionCopyWithImpl<$Res>
    extends _$TweetMentionCopyWithImpl<$Res>
    implements _$$_TweetMentionCopyWith<$Res> {
  __$$_TweetMentionCopyWithImpl(
      _$_TweetMention _value, $Res Function(_$_TweetMention) _then)
      : super(_value, (v) => _then(v as _$_TweetMention));

  @override
  _$_TweetMention get _value => super._value as _$_TweetMention;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_TweetMention(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetMention implements _TweetMention {
  const _$_TweetMention(
      {required this.id,
      required this.username,
      required this.start,
      required this.end});

  factory _$_TweetMention.fromJson(Map<String, dynamic> json) =>
      _$$_TweetMentionFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final int start;
  @override
  final int end;

  @override
  String toString() {
    return 'TweetMention(id: $id, username: $username, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetMention &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_TweetMentionCopyWith<_$_TweetMention> get copyWith =>
      __$$_TweetMentionCopyWithImpl<_$_TweetMention>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetMentionToJson(this);
  }
}

abstract class _TweetMention implements TweetMention {
  const factory _TweetMention(
      {required final String id,
      required final String username,
      required final int start,
      required final int end}) = _$_TweetMention;

  factory _TweetMention.fromJson(Map<String, dynamic> json) =
      _$_TweetMention.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  int get start => throw _privateConstructorUsedError;
  @override
  int get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetMentionCopyWith<_$_TweetMention> get copyWith =>
      throw _privateConstructorUsedError;
}
