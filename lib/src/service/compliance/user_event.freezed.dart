// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEvent _$UserEventFromJson(Map<String, dynamic> json) {
  return _UserEvent.fromJson(json);
}

/// @nodoc
mixin _$UserEvent {
  /// The user data of this event.
  UserEventData get user => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
  $Res call({UserEventData user, DateTime eventAt});

  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
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
abstract class _$$_UserEventCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$_UserEventCopyWith(
          _$_UserEvent value, $Res Function(_$_UserEvent) then) =
      __$$_UserEventCopyWithImpl<$Res>;
  @override
  $Res call({UserEventData user, DateTime eventAt});

  @override
  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_UserEventCopyWith<$Res> {
  __$$_UserEventCopyWithImpl(
      _$_UserEvent _value, $Res Function(_$_UserEvent) _then)
      : super(_value, (v) => _then(v as _$_UserEvent));

  @override
  _$_UserEvent get _value => super._value as _$_UserEvent;

  @override
  $Res call({
    Object? user = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_UserEvent(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEvent implements _UserEvent {
  const _$_UserEvent({required this.user, required this.eventAt});

  factory _$_UserEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UserEventFromJson(json);

  /// The user data of this event.
  @override
  final UserEventData user;

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'UserEvent(user: $user, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEvent &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_UserEventCopyWith<_$_UserEvent> get copyWith =>
      __$$_UserEventCopyWithImpl<_$_UserEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEventToJson(
      this,
    );
  }
}

abstract class _UserEvent implements UserEvent {
  const factory _UserEvent(
      {required final UserEventData user,
      required final DateTime eventAt}) = _$_UserEvent;

  factory _UserEvent.fromJson(Map<String, dynamic> json) =
      _$_UserEvent.fromJson;

  @override

  /// The user data of this event.
  UserEventData get user;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserEventCopyWith<_$_UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
