// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_edit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetEditEvent _$TweetEditEventFromJson(Map<String, dynamic> json) {
  return _TweetEditEvent.fromJson(json);
}

/// @nodoc
mixin _$TweetEditEvent {
  /// The tweet data of this event.
  TweetEventData get tweet => throw _privateConstructorUsedError;

  /// ID of the earliest tweet from which the edited tweet was derived.
  String get initialTweetId => throw _privateConstructorUsedError;

  /// The history of edited tweets.
  List<String> get editTweetIds => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetEditEventCopyWith<TweetEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEditEventCopyWith<$Res> {
  factory $TweetEditEventCopyWith(
          TweetEditEvent value, $Res Function(TweetEditEvent) then) =
      _$TweetEditEventCopyWithImpl<$Res>;
  $Res call(
      {TweetEventData tweet,
      String initialTweetId,
      List<String> editTweetIds,
      DateTime eventAt});

  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class _$TweetEditEventCopyWithImpl<$Res>
    implements $TweetEditEventCopyWith<$Res> {
  _$TweetEditEventCopyWithImpl(this._value, this._then);

  final TweetEditEvent _value;
  // ignore: unused_field
  final $Res Function(TweetEditEvent) _then;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? initialTweetId = freezed,
    Object? editTweetIds = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      initialTweetId: initialTweetId == freezed
          ? _value.initialTweetId
          : initialTweetId // ignore: cast_nullable_to_non_nullable
              as String,
      editTweetIds: editTweetIds == freezed
          ? _value.editTweetIds
          : editTweetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_TweetEditEventCopyWith<$Res>
    implements $TweetEditEventCopyWith<$Res> {
  factory _$$_TweetEditEventCopyWith(
          _$_TweetEditEvent value, $Res Function(_$_TweetEditEvent) then) =
      __$$_TweetEditEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {TweetEventData tweet,
      String initialTweetId,
      List<String> editTweetIds,
      DateTime eventAt});

  @override
  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class __$$_TweetEditEventCopyWithImpl<$Res>
    extends _$TweetEditEventCopyWithImpl<$Res>
    implements _$$_TweetEditEventCopyWith<$Res> {
  __$$_TweetEditEventCopyWithImpl(
      _$_TweetEditEvent _value, $Res Function(_$_TweetEditEvent) _then)
      : super(_value, (v) => _then(v as _$_TweetEditEvent));

  @override
  _$_TweetEditEvent get _value => super._value as _$_TweetEditEvent;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? initialTweetId = freezed,
    Object? editTweetIds = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_TweetEditEvent(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      initialTweetId: initialTweetId == freezed
          ? _value.initialTweetId
          : initialTweetId // ignore: cast_nullable_to_non_nullable
              as String,
      editTweetIds: editTweetIds == freezed
          ? _value._editTweetIds
          : editTweetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetEditEvent implements _TweetEditEvent {
  const _$_TweetEditEvent(
      {required this.tweet,
      required this.initialTweetId,
      required final List<String> editTweetIds,
      required this.eventAt})
      : _editTweetIds = editTweetIds;

  factory _$_TweetEditEvent.fromJson(Map<String, dynamic> json) =>
      _$$_TweetEditEventFromJson(json);

  /// The tweet data of this event.
  @override
  final TweetEventData tweet;

  /// ID of the earliest tweet from which the edited tweet was derived.
  @override
  final String initialTweetId;

  /// The history of edited tweets.
  final List<String> _editTweetIds;

  /// The history of edited tweets.
  @override
  List<String> get editTweetIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editTweetIds);
  }

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'TweetEditEvent(tweet: $tweet, initialTweetId: $initialTweetId, editTweetIds: $editTweetIds, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetEditEvent &&
            const DeepCollectionEquality().equals(other.tweet, tweet) &&
            const DeepCollectionEquality()
                .equals(other.initialTweetId, initialTweetId) &&
            const DeepCollectionEquality()
                .equals(other._editTweetIds, _editTweetIds) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tweet),
      const DeepCollectionEquality().hash(initialTweetId),
      const DeepCollectionEquality().hash(_editTweetIds),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_TweetEditEventCopyWith<_$_TweetEditEvent> get copyWith =>
      __$$_TweetEditEventCopyWithImpl<_$_TweetEditEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetEditEventToJson(
      this,
    );
  }
}

abstract class _TweetEditEvent implements TweetEditEvent {
  const factory _TweetEditEvent(
      {required final TweetEventData tweet,
      required final String initialTweetId,
      required final List<String> editTweetIds,
      required final DateTime eventAt}) = _$_TweetEditEvent;

  factory _TweetEditEvent.fromJson(Map<String, dynamic> json) =
      _$_TweetEditEvent.fromJson;

  @override

  /// The tweet data of this event.
  TweetEventData get tweet;
  @override

  /// ID of the earliest tweet from which the edited tweet was derived.
  String get initialTweetId;
  @override

  /// The history of edited tweets.
  List<String> get editTweetIds;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_TweetEditEventCopyWith<_$_TweetEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
