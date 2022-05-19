// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetEntities _$TweetEntitiesFromJson(Map<String, dynamic> json) {
  return _TweetEntities.fromJson(json);
}

/// @nodoc
mixin _$TweetEntities {
  List<TweetMention> get mentions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetEntitiesCopyWith<TweetEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEntitiesCopyWith<$Res> {
  factory $TweetEntitiesCopyWith(
          TweetEntities value, $Res Function(TweetEntities) then) =
      _$TweetEntitiesCopyWithImpl<$Res>;
  $Res call({List<TweetMention> mentions});
}

/// @nodoc
class _$TweetEntitiesCopyWithImpl<$Res>
    implements $TweetEntitiesCopyWith<$Res> {
  _$TweetEntitiesCopyWithImpl(this._value, this._then);

  final TweetEntities _value;
  // ignore: unused_field
  final $Res Function(TweetEntities) _then;

  @override
  $Res call({
    Object? mentions = freezed,
  }) {
    return _then(_value.copyWith(
      mentions: mentions == freezed
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<TweetMention>,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetEntitiesCopyWith<$Res>
    implements $TweetEntitiesCopyWith<$Res> {
  factory _$$_TweetEntitiesCopyWith(
          _$_TweetEntities value, $Res Function(_$_TweetEntities) then) =
      __$$_TweetEntitiesCopyWithImpl<$Res>;
  @override
  $Res call({List<TweetMention> mentions});
}

/// @nodoc
class __$$_TweetEntitiesCopyWithImpl<$Res>
    extends _$TweetEntitiesCopyWithImpl<$Res>
    implements _$$_TweetEntitiesCopyWith<$Res> {
  __$$_TweetEntitiesCopyWithImpl(
      _$_TweetEntities _value, $Res Function(_$_TweetEntities) _then)
      : super(_value, (v) => _then(v as _$_TweetEntities));

  @override
  _$_TweetEntities get _value => super._value as _$_TweetEntities;

  @override
  $Res call({
    Object? mentions = freezed,
  }) {
    return _then(_$_TweetEntities(
      mentions: mentions == freezed
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<TweetMention>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetEntities implements _TweetEntities {
  const _$_TweetEntities({required final List<TweetMention> mentions})
      : _mentions = mentions;

  factory _$_TweetEntities.fromJson(Map<String, dynamic> json) =>
      _$$_TweetEntitiesFromJson(json);

  final List<TweetMention> _mentions;
  @override
  List<TweetMention> get mentions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  String toString() {
    return 'TweetEntities(mentions: $mentions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetEntities &&
            const DeepCollectionEquality().equals(other._mentions, _mentions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mentions));

  @JsonKey(ignore: true)
  @override
  _$$_TweetEntitiesCopyWith<_$_TweetEntities> get copyWith =>
      __$$_TweetEntitiesCopyWithImpl<_$_TweetEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetEntitiesToJson(this);
  }
}

abstract class _TweetEntities implements TweetEntities {
  const factory _TweetEntities({required final List<TweetMention> mentions}) =
      _$_TweetEntities;

  factory _TweetEntities.fromJson(Map<String, dynamic> json) =
      _$_TweetEntities.fromJson;

  @override
  List<TweetMention> get mentions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetEntitiesCopyWith<_$_TweetEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
