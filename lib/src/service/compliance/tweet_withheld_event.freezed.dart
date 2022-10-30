// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_withheld_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetWithheldEvent _$TweetWithheldEventFromJson(Map<String, dynamic> json) {
  return _TweetWithheldEvent.fromJson(json);
}

/// @nodoc
mixin _$TweetWithheldEvent {
  /// The tweet data of this event.
  TweetEventData get tweet => throw _privateConstructorUsedError;

  /// List of countries applied withheld.
  List<Country> get withheldInCountries => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetWithheldEventCopyWith<TweetWithheldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetWithheldEventCopyWith<$Res> {
  factory $TweetWithheldEventCopyWith(
          TweetWithheldEvent value, $Res Function(TweetWithheldEvent) then) =
      _$TweetWithheldEventCopyWithImpl<$Res>;
  $Res call(
      {TweetEventData tweet,
      List<Country> withheldInCountries,
      DateTime eventAt});

  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class _$TweetWithheldEventCopyWithImpl<$Res>
    implements $TweetWithheldEventCopyWith<$Res> {
  _$TweetWithheldEventCopyWithImpl(this._value, this._then);

  final TweetWithheldEvent _value;
  // ignore: unused_field
  final $Res Function(TweetWithheldEvent) _then;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? withheldInCountries = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      withheldInCountries: withheldInCountries == freezed
          ? _value.withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
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
abstract class _$$_TweetWithheldEventCopyWith<$Res>
    implements $TweetWithheldEventCopyWith<$Res> {
  factory _$$_TweetWithheldEventCopyWith(_$_TweetWithheldEvent value,
          $Res Function(_$_TweetWithheldEvent) then) =
      __$$_TweetWithheldEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {TweetEventData tweet,
      List<Country> withheldInCountries,
      DateTime eventAt});

  @override
  $TweetEventDataCopyWith<$Res> get tweet;
}

/// @nodoc
class __$$_TweetWithheldEventCopyWithImpl<$Res>
    extends _$TweetWithheldEventCopyWithImpl<$Res>
    implements _$$_TweetWithheldEventCopyWith<$Res> {
  __$$_TweetWithheldEventCopyWithImpl(
      _$_TweetWithheldEvent _value, $Res Function(_$_TweetWithheldEvent) _then)
      : super(_value, (v) => _then(v as _$_TweetWithheldEvent));

  @override
  _$_TweetWithheldEvent get _value => super._value as _$_TweetWithheldEvent;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? withheldInCountries = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_TweetWithheldEvent(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as TweetEventData,
      withheldInCountries: withheldInCountries == freezed
          ? _value._withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetWithheldEvent implements _TweetWithheldEvent {
  const _$_TweetWithheldEvent(
      {required this.tweet,
      required final List<Country> withheldInCountries,
      required this.eventAt})
      : _withheldInCountries = withheldInCountries;

  factory _$_TweetWithheldEvent.fromJson(Map<String, dynamic> json) =>
      _$$_TweetWithheldEventFromJson(json);

  /// The tweet data of this event.
  @override
  final TweetEventData tweet;

  /// List of countries applied withheld.
  final List<Country> _withheldInCountries;

  /// List of countries applied withheld.
  @override
  List<Country> get withheldInCountries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withheldInCountries);
  }

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'TweetWithheldEvent(tweet: $tweet, withheldInCountries: $withheldInCountries, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetWithheldEvent &&
            const DeepCollectionEquality().equals(other.tweet, tweet) &&
            const DeepCollectionEquality()
                .equals(other._withheldInCountries, _withheldInCountries) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tweet),
      const DeepCollectionEquality().hash(_withheldInCountries),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_TweetWithheldEventCopyWith<_$_TweetWithheldEvent> get copyWith =>
      __$$_TweetWithheldEventCopyWithImpl<_$_TweetWithheldEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetWithheldEventToJson(
      this,
    );
  }
}

abstract class _TweetWithheldEvent implements TweetWithheldEvent {
  const factory _TweetWithheldEvent(
      {required final TweetEventData tweet,
      required final List<Country> withheldInCountries,
      required final DateTime eventAt}) = _$_TweetWithheldEvent;

  factory _TweetWithheldEvent.fromJson(Map<String, dynamic> json) =
      _$_TweetWithheldEvent.fromJson;

  @override

  /// The tweet data of this event.
  TweetEventData get tweet;
  @override

  /// List of countries applied withheld.
  List<Country> get withheldInCountries;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_TweetWithheldEventCopyWith<_$_TweetWithheldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
