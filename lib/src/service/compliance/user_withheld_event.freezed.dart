// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_withheld_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWithheldEvent _$UserWithheldEventFromJson(Map<String, dynamic> json) {
  return _UserWithheldEvent.fromJson(json);
}

/// @nodoc
mixin _$UserWithheldEvent {
  /// The user data of this event.
  UserEventData get user => throw _privateConstructorUsedError;

  /// List of countries applied withheld.
  List<ISOAlpha2Country> get withheldInCountries =>
      throw _privateConstructorUsedError;

  /// Time of when event happened.
  DateTime get eventAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithheldEventCopyWith<UserWithheldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithheldEventCopyWith<$Res> {
  factory $UserWithheldEventCopyWith(
          UserWithheldEvent value, $Res Function(UserWithheldEvent) then) =
      _$UserWithheldEventCopyWithImpl<$Res>;
  $Res call(
      {UserEventData user,
      List<ISOAlpha2Country> withheldInCountries,
      DateTime eventAt});

  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UserWithheldEventCopyWithImpl<$Res>
    implements $UserWithheldEventCopyWith<$Res> {
  _$UserWithheldEventCopyWithImpl(this._value, this._then);

  final UserWithheldEvent _value;
  // ignore: unused_field
  final $Res Function(UserWithheldEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? withheldInCountries = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      withheldInCountries: withheldInCountries == freezed
          ? _value.withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<ISOAlpha2Country>,
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
abstract class _$$_UserWithheldEventCopyWith<$Res>
    implements $UserWithheldEventCopyWith<$Res> {
  factory _$$_UserWithheldEventCopyWith(_$_UserWithheldEvent value,
          $Res Function(_$_UserWithheldEvent) then) =
      __$$_UserWithheldEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEventData user,
      List<ISOAlpha2Country> withheldInCountries,
      DateTime eventAt});

  @override
  $UserEventDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserWithheldEventCopyWithImpl<$Res>
    extends _$UserWithheldEventCopyWithImpl<$Res>
    implements _$$_UserWithheldEventCopyWith<$Res> {
  __$$_UserWithheldEventCopyWithImpl(
      _$_UserWithheldEvent _value, $Res Function(_$_UserWithheldEvent) _then)
      : super(_value, (v) => _then(v as _$_UserWithheldEvent));

  @override
  _$_UserWithheldEvent get _value => super._value as _$_UserWithheldEvent;

  @override
  $Res call({
    Object? user = freezed,
    Object? withheldInCountries = freezed,
    Object? eventAt = freezed,
  }) {
    return _then(_$_UserWithheldEvent(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEventData,
      withheldInCountries: withheldInCountries == freezed
          ? _value._withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<ISOAlpha2Country>,
      eventAt: eventAt == freezed
          ? _value.eventAt
          : eventAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWithheldEvent implements _UserWithheldEvent {
  const _$_UserWithheldEvent(
      {required this.user,
      required final List<ISOAlpha2Country> withheldInCountries,
      required this.eventAt})
      : _withheldInCountries = withheldInCountries;

  factory _$_UserWithheldEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithheldEventFromJson(json);

  /// The user data of this event.
  @override
  final UserEventData user;

  /// List of countries applied withheld.
  final List<ISOAlpha2Country> _withheldInCountries;

  /// List of countries applied withheld.
  @override
  List<ISOAlpha2Country> get withheldInCountries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withheldInCountries);
  }

  /// Time of when event happened.
  @override
  final DateTime eventAt;

  @override
  String toString() {
    return 'UserWithheldEvent(user: $user, withheldInCountries: $withheldInCountries, eventAt: $eventAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithheldEvent &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other._withheldInCountries, _withheldInCountries) &&
            const DeepCollectionEquality().equals(other.eventAt, eventAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_withheldInCountries),
      const DeepCollectionEquality().hash(eventAt));

  @JsonKey(ignore: true)
  @override
  _$$_UserWithheldEventCopyWith<_$_UserWithheldEvent> get copyWith =>
      __$$_UserWithheldEventCopyWithImpl<_$_UserWithheldEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithheldEventToJson(
      this,
    );
  }
}

abstract class _UserWithheldEvent implements UserWithheldEvent {
  const factory _UserWithheldEvent(
      {required final UserEventData user,
      required final List<ISOAlpha2Country> withheldInCountries,
      required final DateTime eventAt}) = _$_UserWithheldEvent;

  factory _UserWithheldEvent.fromJson(Map<String, dynamic> json) =
      _$_UserWithheldEvent.fromJson;

  @override

  /// The user data of this event.
  UserEventData get user;
  @override

  /// List of countries applied withheld.
  List<ISOAlpha2Country> get withheldInCountries;
  @override

  /// Time of when event happened.
  DateTime get eventAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithheldEventCopyWith<_$_UserWithheldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
