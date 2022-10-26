// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetEvent _$TweetEventFromJson(Map<String, dynamic> json) {
  return _TweetEvent.fromJson(json);
}

/// @nodoc
mixin _$TweetEvent {
  /// The tweet data of this event.
  TweetEventData get tweet => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetEventCopyWith<TweetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEventCopyWith<$Res> {
  factory $TweetEventCopyWith(
          TweetEvent value, $Res Function(TweetEvent) then) =
      _$TweetEventCopyWithImpl<$Res>;
  $Res call({TweetEventData tweet, DateTime eventAt});

  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class _$TweetEventCopyWithImpl<$Res> implements $TweetEventCopyWith<$Res> {
  _$TweetEventCopyWithImpl(this._value, this._then);

  final TweetEvent _value;
  // ignore: unused_field
  final $Res Function(TweetEvent) _then;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $TweetEventDataCopyWith<$Res> get tweet {
    return $TweetEventDataCopyWith<$Res>(_value.tweet, (value) {
      return _then(_value.copyWith(tweet: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetEventCopyWith<$Res>
    implements $TweetEventCopyWith<$Res> {
  factory _$$_TweetEventCopyWith(
          _$_TweetEvent value, $Res Function(_$_TweetEvent) then) =
      __$$_TweetEventCopyWithImpl<$Res>;
  @override
  $Res call({TweetEventData tweet, DateTime eventAt});

  @override
  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class __$$_TweetEventCopyWithImpl<$Res> extends _$TweetEventCopyWithImpl<$Res>
    implements _$$_TweetEventCopyWith<$Res> {
  __$$_TweetEventCopyWithImpl(
      _$_TweetEvent _value, $Res Function(_$_TweetEvent) _then)
      : super(_value, (v) => _then(v as _$_TweetEvent));

  @override
  _$_TweetEvent get _value => super._value as _$_TweetEvent;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_TweetEvent(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetEvent implements _TweetEvent {
  const _$_TweetEvent({required this.tweet, required this.eventAt});

  factory _$_TweetEvent.fromJson(Map<String, dynamic> json) =>
      _$$_TweetEventFromJson(json);

  /// The tweet data of this event.
  @override
  final TweetEventData tweet;

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'TweetEvent(tweet: $tweet, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetEvent &&
            const DeepCollectionEquality().equals(other.tweet, tweet) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tweet),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_TweetEventCopyWith<_$_TweetEvent> get copyWith =>
      __$$_TweetEventCopyWithImpl<_$_TweetEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetEventToJson(
      this,
    );
  }
}

abstract class _TweetEvent implements TweetEvent {
  const factory _TweetEvent(
      {required final TweetEventData tweet,
      required final DateTime eventAt}) = _$_TweetEvent;

  factory _TweetEvent.fromJson(Map<String, dynamic> json) =
      _$_TweetEvent.fromJson;

  @override

  /// The tweet data of this event.
  TweetEventData get tweet;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_TweetEventCopyWith<_$_TweetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
