// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_modification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModificationEvent _$UserProfileModificationEventFromJson(
    Map<String, dynamic> json) {
  return _UserProfileModificationEvent.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModificationEvent {
  /// The user data of this event.
  UserEventData get user => throw _privateConstructorUsedError;

  /// Indicates what in the User profile changed.
  UserProfileField get profileField => throw _privateConstructorUsedError;

  /// The new value for [profileField].
  String get newValue => throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModificationEventCopyWith<UserProfileModificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModificationEventCopyWith<$Res> {
  factory $UserProfileModificationEventCopyWith(
          UserProfileModificationEvent value,
          $Res Function(UserProfileModificationEvent) then) =
      _$UserProfileModificationEventCopyWithImpl<$Res>;
  $Res call(
      {UserEventData user,
      UserProfileField profileField,
      String newValue,
      DateTime eventAt});

  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UserProfileModificationEventCopyWithImpl<$Res>
    implements $UserProfileModificationEventCopyWith<$Res> {
  _$UserProfileModificationEventCopyWithImpl(this._value, this._then);

  final UserProfileModificationEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileModificationEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? profileField = freezed,
    Object? newValue = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      profileField: profileField == freezed
          ? _value.profileField
          : profileField // ignore: cast_nullable_to_non_nullable
              as UserProfileField,
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserProfileModificationEventCopyWith<$Res>
    implements $UserProfileModificationEventCopyWith<$Res> {
  factory _$$_UserProfileModificationEventCopyWith(
          _$_UserProfileModificationEvent value,
          $Res Function(_$_UserProfileModificationEvent) then) =
      __$$_UserProfileModificationEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEventData user,
      UserProfileField profileField,
      String newValue,
      DateTime eventAt});

  @override
  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserProfileModificationEventCopyWithImpl<$Res>
    extends _$UserProfileModificationEventCopyWithImpl<$Res>
    implements _$$_UserProfileModificationEventCopyWith<$Res> {
  __$$_UserProfileModificationEventCopyWithImpl(
      _$_UserProfileModificationEvent _value,
      $Res Function(_$_UserProfileModificationEvent) _then)
      : super(_value, (v) => _then(v as _$_UserProfileModificationEvent));

  @override
  _$_UserProfileModificationEvent get _value =>
      super._value as _$_UserProfileModificationEvent;

  @override
  $Res call({
    Object? user = freezed,
    Object? profileField = freezed,
    Object? newValue = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_UserProfileModificationEvent(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      profileField: profileField == freezed
          ? _value.profileField
          : profileField // ignore: cast_nullable_to_non_nullable
              as UserProfileField,
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
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
class _$_UserProfileModificationEvent implements _UserProfileModificationEvent {
  const _$_UserProfileModificationEvent(
      {required this.user,
      required this.profileField,
      required this.newValue,
      required this.eventAt});

  factory _$_UserProfileModificationEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModificationEventFromJson(json);

  /// The user data of this event.
  @override
  final UserEventData user;

  /// Indicates what in the User profile changed.
  @override
  final UserProfileField profileField;

  /// The new value for [profileField].
  @override
  final String newValue;

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'UserProfileModificationEvent(user: $user, profileField: $profileField, newValue: $newValue, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileModificationEvent &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.profileField, profileField) &&
            const DeepCollectionEquality().equals(other.newValue, newValue) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(profileField),
      const DeepCollectionEquality().hash(newValue),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileModificationEventCopyWith<_$_UserProfileModificationEvent>
      get copyWith => __$$_UserProfileModificationEventCopyWithImpl<
          _$_UserProfileModificationEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModificationEventToJson(
      this,
    );
  }
}

abstract class _UserProfileModificationEvent
    implements UserProfileModificationEvent {
  const factory _UserProfileModificationEvent(
      {required final UserEventData user,
      required final UserProfileField profileField,
      required final String newValue,
      required final DateTime eventAt}) = _$_UserProfileModificationEvent;

  factory _UserProfileModificationEvent.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModificationEvent.fromJson;

  @override

  /// The user data of this event.
  UserEventData get user;
  @override

  /// Indicates what in the User profile changed.
  UserProfileField get profileField;
  @override

  /// The new value for [profileField].
  String get newValue;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModificationEventCopyWith<_$_UserProfileModificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}
