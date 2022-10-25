// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_compliance_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserComplianceData _$UserComplianceDataFromJson(Map<String, dynamic> json) {
  return _UserComplianceData.fromJson(json);
}

/// @nodoc
mixin _$UserComplianceData {
  @JsonKey(name: 'scrub_geo')
  UserEvent? get scrubGeo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_delete')
  UserEvent? get delete => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_undelete')
  UserEvent? get undelete => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_withheld')
  UserWithheldEvent? get withheld => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_protect')
  UserEvent? get protect => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_unprotect')
  UserEvent? get unprotect => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_suspend')
  UserEvent? get suspend => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_unsuspend')
  UserEvent? get unsuspend => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_modification')
  UserProfileModificationEvent? get profileModification =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserComplianceDataCopyWith<UserComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserComplianceDataCopyWith<$Res> {
  factory $UserComplianceDataCopyWith(
          UserComplianceData value, $Res Function(UserComplianceData) then) =
      _$UserComplianceDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'scrub_geo')
          UserEvent? scrubGeo,
      @JsonKey(name: 'user_delete')
          UserEvent? delete,
      @JsonKey(name: 'user_undelete')
          UserEvent? undelete,
      @JsonKey(name: 'user_withheld')
          UserWithheldEvent? withheld,
      @JsonKey(name: 'user_protect')
          UserEvent? protect,
      @JsonKey(name: 'user_unprotect')
          UserEvent? unprotect,
      @JsonKey(name: 'user_suspend')
          UserEvent? suspend,
      @JsonKey(name: 'user_unsuspend')
          UserEvent? unsuspend,
      @JsonKey(name: 'user_profile_modification')
          UserProfileModificationEvent? profileModification});

  $UserEventCopyWith<$Res>? get scrubGeo;
  $UserEventCopyWith<$Res>? get delete;
  $UserEventCopyWith<$Res>? get undelete;
  $UserWithheldEventCopyWith<$Res>? get withheld;
  $UserEventCopyWith<$Res>? get protect;
  $UserEventCopyWith<$Res>? get unprotect;
  $UserEventCopyWith<$Res>? get suspend;
  $UserEventCopyWith<$Res>? get unsuspend;
  $UserProfileModificationEventCopyWith<$Res>? get profileModification;
}

/// @nodoc
class _$UserComplianceDataCopyWithImpl<$Res>
    implements $UserComplianceDataCopyWith<$Res> {
  _$UserComplianceDataCopyWithImpl(this._value, this._then);

  final UserComplianceData _value;
  // ignore: unused_field
  final $Res Function(UserComplianceData) _then;

  @override
  $Res call({
    Object? scrubGeo = freezed,
    Object? delete = freezed,
    Object? undelete = freezed,
    Object? withheld = freezed,
    Object? protect = freezed,
    Object? unprotect = freezed,
    Object? suspend = freezed,
    Object? unsuspend = freezed,
    Object? profileModification = freezed,
  }) {
    return _then(_value.copyWith(
      scrubGeo: scrubGeo == freezed
          ? _value.scrubGeo
          : scrubGeo // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      undelete: undelete == freezed
          ? _value.undelete
          : undelete // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheldEvent?,
      protect: protect == freezed
          ? _value.protect
          : protect // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      unprotect: unprotect == freezed
          ? _value.unprotect
          : unprotect // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      suspend: suspend == freezed
          ? _value.suspend
          : suspend // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      unsuspend: unsuspend == freezed
          ? _value.unsuspend
          : unsuspend // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      profileModification: profileModification == freezed
          ? _value.profileModification
          : profileModification // ignore: cast_nullable_to_non_nullable
              as UserProfileModificationEvent?,
    ));
  }

  @override
  $UserEventCopyWith<$Res>? get scrubGeo {
    if (_value.scrubGeo == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.scrubGeo!, (value) {
      return _then(_value.copyWith(scrubGeo: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get delete {
    if (_value.delete == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.delete!, (value) {
      return _then(_value.copyWith(delete: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get undelete {
    if (_value.undelete == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.undelete!, (value) {
      return _then(_value.copyWith(undelete: value));
    });
  }

  @override
  $UserWithheldEventCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $UserWithheldEventCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get protect {
    if (_value.protect == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.protect!, (value) {
      return _then(_value.copyWith(protect: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get unprotect {
    if (_value.unprotect == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.unprotect!, (value) {
      return _then(_value.copyWith(unprotect: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get suspend {
    if (_value.suspend == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.suspend!, (value) {
      return _then(_value.copyWith(suspend: value));
    });
  }

  @override
  $UserEventCopyWith<$Res>? get unsuspend {
    if (_value.unsuspend == null) {
      return null;
    }

    return $UserEventCopyWith<$Res>(_value.unsuspend!, (value) {
      return _then(_value.copyWith(unsuspend: value));
    });
  }

  @override
  $UserProfileModificationEventCopyWith<$Res>? get profileModification {
    if (_value.profileModification == null) {
      return null;
    }

    return $UserProfileModificationEventCopyWith<$Res>(
        _value.profileModification!, (value) {
      return _then(_value.copyWith(profileModification: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserComplianceDataCopyWith<$Res>
    implements $UserComplianceDataCopyWith<$Res> {
  factory _$$_UserComplianceDataCopyWith(_$_UserComplianceData value,
          $Res Function(_$_UserComplianceData) then) =
      __$$_UserComplianceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'scrub_geo')
          UserEvent? scrubGeo,
      @JsonKey(name: 'user_delete')
          UserEvent? delete,
      @JsonKey(name: 'user_undelete')
          UserEvent? undelete,
      @JsonKey(name: 'user_withheld')
          UserWithheldEvent? withheld,
      @JsonKey(name: 'user_protect')
          UserEvent? protect,
      @JsonKey(name: 'user_unprotect')
          UserEvent? unprotect,
      @JsonKey(name: 'user_suspend')
          UserEvent? suspend,
      @JsonKey(name: 'user_unsuspend')
          UserEvent? unsuspend,
      @JsonKey(name: 'user_profile_modification')
          UserProfileModificationEvent? profileModification});

  @override
  $UserEventCopyWith<$Res>? get scrubGeo;
  @override
  $UserEventCopyWith<$Res>? get delete;
  @override
  $UserEventCopyWith<$Res>? get undelete;
  @override
  $UserWithheldEventCopyWith<$Res>? get withheld;
  @override
  $UserEventCopyWith<$Res>? get protect;
  @override
  $UserEventCopyWith<$Res>? get unprotect;
  @override
  $UserEventCopyWith<$Res>? get suspend;
  @override
  $UserEventCopyWith<$Res>? get unsuspend;
  @override
  $UserProfileModificationEventCopyWith<$Res>? get profileModification;
}

/// @nodoc
class __$$_UserComplianceDataCopyWithImpl<$Res>
    extends _$UserComplianceDataCopyWithImpl<$Res>
    implements _$$_UserComplianceDataCopyWith<$Res> {
  __$$_UserComplianceDataCopyWithImpl(
      _$_UserComplianceData _value, $Res Function(_$_UserComplianceData) _then)
      : super(_value, (v) => _then(v as _$_UserComplianceData));

  @override
  _$_UserComplianceData get _value => super._value as _$_UserComplianceData;

  @override
  $Res call({
    Object? scrubGeo = freezed,
    Object? delete = freezed,
    Object? undelete = freezed,
    Object? withheld = freezed,
    Object? protect = freezed,
    Object? unprotect = freezed,
    Object? suspend = freezed,
    Object? unsuspend = freezed,
    Object? profileModification = freezed,
  }) {
    return _then(_$_UserComplianceData(
      scrubGeo: scrubGeo == freezed
          ? _value.scrubGeo
          : scrubGeo // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      undelete: undelete == freezed
          ? _value.undelete
          : undelete // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheldEvent?,
      protect: protect == freezed
          ? _value.protect
          : protect // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      unprotect: unprotect == freezed
          ? _value.unprotect
          : unprotect // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      suspend: suspend == freezed
          ? _value.suspend
          : suspend // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      unsuspend: unsuspend == freezed
          ? _value.unsuspend
          : unsuspend // ignore: cast_nullable_to_non_nullable
              as UserEvent?,
      profileModification: profileModification == freezed
          ? _value.profileModification
          : profileModification // ignore: cast_nullable_to_non_nullable
              as UserProfileModificationEvent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserComplianceData implements _UserComplianceData {
  const _$_UserComplianceData(
      {@JsonKey(name: 'scrub_geo') this.scrubGeo,
      @JsonKey(name: 'user_delete') this.delete,
      @JsonKey(name: 'user_undelete') this.undelete,
      @JsonKey(name: 'user_withheld') this.withheld,
      @JsonKey(name: 'user_protect') this.protect,
      @JsonKey(name: 'user_unprotect') this.unprotect,
      @JsonKey(name: 'user_suspend') this.suspend,
      @JsonKey(name: 'user_unsuspend') this.unsuspend,
      @JsonKey(name: 'user_profile_modification') this.profileModification});

  factory _$_UserComplianceData.fromJson(Map<String, dynamic> json) =>
      _$$_UserComplianceDataFromJson(json);

  @override
  @JsonKey(name: 'scrub_geo')
  final UserEvent? scrubGeo;
  @override
  @JsonKey(name: 'user_delete')
  final UserEvent? delete;
  @override
  @JsonKey(name: 'user_undelete')
  final UserEvent? undelete;
  @override
  @JsonKey(name: 'user_withheld')
  final UserWithheldEvent? withheld;
  @override
  @JsonKey(name: 'user_protect')
  final UserEvent? protect;
  @override
  @JsonKey(name: 'user_unprotect')
  final UserEvent? unprotect;
  @override
  @JsonKey(name: 'user_suspend')
  final UserEvent? suspend;
  @override
  @JsonKey(name: 'user_unsuspend')
  final UserEvent? unsuspend;
  @override
  @JsonKey(name: 'user_profile_modification')
  final UserProfileModificationEvent? profileModification;

  @override
  String toString() {
    return 'UserComplianceData(scrubGeo: $scrubGeo, delete: $delete, undelete: $undelete, withheld: $withheld, protect: $protect, unprotect: $unprotect, suspend: $suspend, unsuspend: $unsuspend, profileModification: $profileModification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserComplianceData &&
            const DeepCollectionEquality().equals(other.scrubGeo, scrubGeo) &&
            const DeepCollectionEquality().equals(other.delete, delete) &&
            const DeepCollectionEquality().equals(other.undelete, undelete) &&
            const DeepCollectionEquality().equals(other.withheld, withheld) &&
            const DeepCollectionEquality().equals(other.protect, protect) &&
            const DeepCollectionEquality().equals(other.unprotect, unprotect) &&
            const DeepCollectionEquality().equals(other.suspend, suspend) &&
            const DeepCollectionEquality().equals(other.unsuspend, unsuspend) &&
            const DeepCollectionEquality()
                .equals(other.profileModification, profileModification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scrubGeo),
      const DeepCollectionEquality().hash(delete),
      const DeepCollectionEquality().hash(undelete),
      const DeepCollectionEquality().hash(withheld),
      const DeepCollectionEquality().hash(protect),
      const DeepCollectionEquality().hash(unprotect),
      const DeepCollectionEquality().hash(suspend),
      const DeepCollectionEquality().hash(unsuspend),
      const DeepCollectionEquality().hash(profileModification));

  @JsonKey(ignore: true)
  @override
  _$$_UserComplianceDataCopyWith<_$_UserComplianceData> get copyWith =>
      __$$_UserComplianceDataCopyWithImpl<_$_UserComplianceData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserComplianceDataToJson(
      this,
    );
  }
}

abstract class _UserComplianceData implements UserComplianceData {
  const factory _UserComplianceData(
          {@JsonKey(name: 'scrub_geo')
              final UserEvent? scrubGeo,
          @JsonKey(name: 'user_delete')
              final UserEvent? delete,
          @JsonKey(name: 'user_undelete')
              final UserEvent? undelete,
          @JsonKey(name: 'user_withheld')
              final UserWithheldEvent? withheld,
          @JsonKey(name: 'user_protect')
              final UserEvent? protect,
          @JsonKey(name: 'user_unprotect')
              final UserEvent? unprotect,
          @JsonKey(name: 'user_suspend')
              final UserEvent? suspend,
          @JsonKey(name: 'user_unsuspend')
              final UserEvent? unsuspend,
          @JsonKey(name: 'user_profile_modification')
              final UserProfileModificationEvent? profileModification}) =
      _$_UserComplianceData;

  factory _UserComplianceData.fromJson(Map<String, dynamic> json) =
      _$_UserComplianceData.fromJson;

  @override
  @JsonKey(name: 'scrub_geo')
  UserEvent? get scrubGeo;
  @override
  @JsonKey(name: 'user_delete')
  UserEvent? get delete;
  @override
  @JsonKey(name: 'user_undelete')
  UserEvent? get undelete;
  @override
  @JsonKey(name: 'user_withheld')
  UserWithheldEvent? get withheld;
  @override
  @JsonKey(name: 'user_protect')
  UserEvent? get protect;
  @override
  @JsonKey(name: 'user_unprotect')
  UserEvent? get unprotect;
  @override
  @JsonKey(name: 'user_suspend')
  UserEvent? get suspend;
  @override
  @JsonKey(name: 'user_unsuspend')
  UserEvent? get unsuspend;
  @override
  @JsonKey(name: 'user_profile_modification')
  UserProfileModificationEvent? get profileModification;
  @override
  @JsonKey(ignore: true)
  _$$_UserComplianceDataCopyWith<_$_UserComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}
