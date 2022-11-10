// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_scrub_geo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserScrubGeoEvent _$UserScrubGeoEventFromJson(Map<String, dynamic> json) {
  return _UserScrubGeoEvent.fromJson(json);
}

/// @nodoc
mixin _$UserScrubGeoEvent {
  /// The user data of this event.
  UserEventData get user => throw _privateConstructorUsedError;

  /// The related tweet id.
  String get upToTweetId => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserScrubGeoEventCopyWith<UserScrubGeoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScrubGeoEventCopyWith<$Res> {
  factory $UserScrubGeoEventCopyWith(
          UserScrubGeoEvent value, $Res Function(UserScrubGeoEvent) then) =
      _$UserScrubGeoEventCopyWithImpl<$Res>;
  $Res call({UserEventData user, String upToTweetId, DateTime eventAt});

  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UserScrubGeoEventCopyWithImpl<$Res>
    implements $UserScrubGeoEventCopyWith<$Res> {
  _$UserScrubGeoEventCopyWithImpl(this._value, this._then);

  final UserScrubGeoEvent _value;
  // ignore: unused_field
  final $Res Function(UserScrubGeoEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? upToTweetId = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      upToTweetId: upToTweetId == freezed
          ? _value.upToTweetId
          : upToTweetId // ignore: cast_nullable_to_non_nullable
              as String,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $UserEventDataCopyWith<$Res> get user {
    return $UserEventDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserScrubGeoEventCopyWith<$Res>
    implements $UserScrubGeoEventCopyWith<$Res> {
  factory _$$_UserScrubGeoEventCopyWith(_$_UserScrubGeoEvent value,
          $Res Function(_$_UserScrubGeoEvent) then) =
      __$$_UserScrubGeoEventCopyWithImpl<$Res>;
  @override
  $Res call({UserEventData user, String upToTweetId, DateTime eventAt});

  @override
  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserScrubGeoEventCopyWithImpl<$Res>
    extends _$UserScrubGeoEventCopyWithImpl<$Res>
    implements _$$_UserScrubGeoEventCopyWith<$Res> {
  __$$_UserScrubGeoEventCopyWithImpl(
      _$_UserScrubGeoEvent _value, $Res Function(_$_UserScrubGeoEvent) _then)
      : super(_value, (v) => _then(v as _$_UserScrubGeoEvent));

  @override
  _$_UserScrubGeoEvent get _value => super._value as _$_UserScrubGeoEvent;

  @override
  $Res call({
    Object? user = freezed,
    Object? upToTweetId = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_UserScrubGeoEvent(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      upToTweetId: upToTweetId == freezed
          ? _value.upToTweetId
          : upToTweetId // ignore: cast_nullable_to_non_nullable
              as String,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserScrubGeoEvent implements _UserScrubGeoEvent {
  const _$_UserScrubGeoEvent(
      {required this.user, required this.upToTweetId, required this.eventAt});

  factory _$_UserScrubGeoEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UserScrubGeoEventFromJson(json);

  /// The user data of this event.
  @override
  final UserEventData user;

  /// The related tweet id.
  @override
  final String upToTweetId;

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'UserScrubGeoEvent(user: $user, upToTweetId: $upToTweetId, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserScrubGeoEvent &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.upToTweetId, upToTweetId) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(upToTweetId),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_UserScrubGeoEventCopyWith<_$_UserScrubGeoEvent> get copyWith =>
      __$$_UserScrubGeoEventCopyWithImpl<_$_UserScrubGeoEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserScrubGeoEventToJson(
      this,
    );
  }
}

abstract class _UserScrubGeoEvent implements UserScrubGeoEvent {
  const factory _UserScrubGeoEvent(
      {required final UserEventData user,
      required final String upToTweetId,
      required final DateTime eventAt}) = _$_UserScrubGeoEvent;

  factory _UserScrubGeoEvent.fromJson(Map<String, dynamic> json) =
      _$_UserScrubGeoEvent.fromJson;

  @override

  /// The user data of this event.
  UserEventData get user;
  @override

  /// The related tweet id.
  String get upToTweetId;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserScrubGeoEventCopyWith<_$_UserScrubGeoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
