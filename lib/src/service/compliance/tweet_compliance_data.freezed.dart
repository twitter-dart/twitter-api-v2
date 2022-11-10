// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_compliance_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetComplianceData _$TweetComplianceDataFromJson(Map<String, dynamic> json) {
  return _TweetComplianceData.fromJson(json);
}

/// @nodoc
mixin _$TweetComplianceData {
  /// A delete Tweet event.
  TweetEvent? get delete => throw _privateConstructorUsedError;

  /// A edit Tweet event.
  TweetEditEvent? get tweetEdit => throw _privateConstructorUsedError;

  /// A withheld Tweet event.
  TweetWithheldEvent? get withheld => throw _privateConstructorUsedError;

  /// A drop Tweet event.
  TweetEvent? get drop => throw _privateConstructorUsedError;

  /// A undrop Tweet event.
  TweetEvent? get undrop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetComplianceDataCopyWith<TweetComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetComplianceDataCopyWith<$Res> {
  factory $TweetComplianceDataCopyWith(
          TweetComplianceData value, $Res Function(TweetComplianceData) then) =
      _$TweetComplianceDataCopyWithImpl<$Res>;
  $Res call(
      {TweetEvent? delete,
      TweetEditEvent? tweetEdit,
      TweetWithheldEvent? withheld,
      TweetEvent? drop,
      TweetEvent? undrop});

  $TweetEventCopyWith<$Res>? get delete;
  $TweetEditEventCopyWith<$Res>? get tweetEdit;
  $TweetWithheldEventCopyWith<$Res>? get withheld;
  $TweetEventCopyWith<$Res>? get drop;
  $TweetEventCopyWith<$Res>? get undrop;
}

/// @nodoc
class _$TweetComplianceDataCopyWithImpl<$Res>
    implements $TweetComplianceDataCopyWith<$Res> {
  _$TweetComplianceDataCopyWithImpl(this._value, this._then);

  final TweetComplianceData _value;
  // ignore: unused_field
  final $Res Function(TweetComplianceData) _then;

  @override
  $Res call({
    Object? delete = freezed,
    Object? tweetEdit = freezed,
    Object? withheld = freezed,
    Object? drop = freezed,
    Object? undrop = freezed,
  }) {
    return _then(_value.copyWith(
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
      tweetEdit: tweetEdit == freezed
          ? _value.tweetEdit
          : tweetEdit // ignore: cast_nullable_to_non_nullable
              as TweetEditEvent?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheldEvent?,
      drop: drop == freezed
          ? _value.drop
          : drop // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
      undrop: undrop == freezed
          ? _value.undrop
          : undrop // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
    ));
  }

  @override
  $TweetEventCopyWith<$Res>? get delete {
    if (_value.delete == null) {
      return null;
    }

    return $TweetEventCopyWith<$Res>(_value.delete!, (value) {
      return _then(_value.copyWith(delete: value));
    });
  }

  @override
  $TweetEditEventCopyWith<$Res>? get tweetEdit {
    if (_value.tweetEdit == null) {
      return null;
    }

    return $TweetEditEventCopyWith<$Res>(_value.tweetEdit!, (value) {
      return _then(_value.copyWith(tweetEdit: value));
    });
  }

  @override
  $TweetWithheldEventCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $TweetWithheldEventCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }

  @override
  $TweetEventCopyWith<$Res>? get drop {
    if (_value.drop == null) {
      return null;
    }

    return $TweetEventCopyWith<$Res>(_value.drop!, (value) {
      return _then(_value.copyWith(drop: value));
    });
  }

  @override
  $TweetEventCopyWith<$Res>? get undrop {
    if (_value.undrop == null) {
      return null;
    }

    return $TweetEventCopyWith<$Res>(_value.undrop!, (value) {
      return _then(_value.copyWith(undrop: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetComplianceDataCopyWith<$Res>
    implements $TweetComplianceDataCopyWith<$Res> {
  factory _$$_TweetComplianceDataCopyWith(_$_TweetComplianceData value,
          $Res Function(_$_TweetComplianceData) then) =
      __$$_TweetComplianceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TweetEvent? delete,
      TweetEditEvent? tweetEdit,
      TweetWithheldEvent? withheld,
      TweetEvent? drop,
      TweetEvent? undrop});

  @override
  $TweetEventCopyWith<$Res>? get delete;
  @override
  $TweetEditEventCopyWith<$Res>? get tweetEdit;
  @override
  $TweetWithheldEventCopyWith<$Res>? get withheld;
  @override
  $TweetEventCopyWith<$Res>? get drop;
  @override
  $TweetEventCopyWith<$Res>? get undrop;
}

/// @nodoc
class __$$_TweetComplianceDataCopyWithImpl<$Res>
    extends _$TweetComplianceDataCopyWithImpl<$Res>
    implements _$$_TweetComplianceDataCopyWith<$Res> {
  __$$_TweetComplianceDataCopyWithImpl(_$_TweetComplianceData _value,
      $Res Function(_$_TweetComplianceData) _then)
      : super(_value, (v) => _then(v as _$_TweetComplianceData));

  @override
  _$_TweetComplianceData get _value => super._value as _$_TweetComplianceData;

  @override
  $Res call({
    Object? delete = freezed,
    Object? tweetEdit = freezed,
    Object? withheld = freezed,
    Object? drop = freezed,
    Object? undrop = freezed,
  }) {
    return _then(_$_TweetComplianceData(
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
      tweetEdit: tweetEdit == freezed
          ? _value.tweetEdit
          : tweetEdit // ignore: cast_nullable_to_non_nullable
              as TweetEditEvent?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheldEvent?,
      drop: drop == freezed
          ? _value.drop
          : drop // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
      undrop: undrop == freezed
          ? _value.undrop
          : undrop // ignore: cast_nullable_to_non_nullable
              as TweetEvent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetComplianceData implements _TweetComplianceData {
  const _$_TweetComplianceData(
      {this.delete, this.tweetEdit, this.withheld, this.drop, this.undrop});

  factory _$_TweetComplianceData.fromJson(Map<String, dynamic> json) =>
      _$$_TweetComplianceDataFromJson(json);

  /// A delete Tweet event.
  @override
  final TweetEvent? delete;

  /// A edit Tweet event.
  @override
  final TweetEditEvent? tweetEdit;

  /// A withheld Tweet event.
  @override
  final TweetWithheldEvent? withheld;

  /// A drop Tweet event.
  @override
  final TweetEvent? drop;

  /// A undrop Tweet event.
  @override
  final TweetEvent? undrop;

  @override
  String toString() {
    return 'TweetComplianceData(delete: $delete, tweetEdit: $tweetEdit, withheld: $withheld, drop: $drop, undrop: $undrop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetComplianceData &&
            const DeepCollectionEquality().equals(other.delete, delete) &&
            const DeepCollectionEquality().equals(other.tweetEdit, tweetEdit) &&
            const DeepCollectionEquality().equals(other.withheld, withheld) &&
            const DeepCollectionEquality().equals(other.drop, drop) &&
            const DeepCollectionEquality().equals(other.undrop, undrop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(delete),
      const DeepCollectionEquality().hash(tweetEdit),
      const DeepCollectionEquality().hash(withheld),
      const DeepCollectionEquality().hash(drop),
      const DeepCollectionEquality().hash(undrop));

  @JsonKey(ignore: true)
  @override
  _$$_TweetComplianceDataCopyWith<_$_TweetComplianceData> get copyWith =>
      __$$_TweetComplianceDataCopyWithImpl<_$_TweetComplianceData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetComplianceDataToJson(
      this,
    );
  }
}

abstract class _TweetComplianceData implements TweetComplianceData {
  const factory _TweetComplianceData(
      {final TweetEvent? delete,
      final TweetEditEvent? tweetEdit,
      final TweetWithheldEvent? withheld,
      final TweetEvent? drop,
      final TweetEvent? undrop}) = _$_TweetComplianceData;

  factory _TweetComplianceData.fromJson(Map<String, dynamic> json) =
      _$_TweetComplianceData.fromJson;

  @override

  /// A delete Tweet event.
  TweetEvent? get delete;
  @override

  /// A edit Tweet event.
  TweetEditEvent? get tweetEdit;
  @override

  /// A withheld Tweet event.
  TweetWithheldEvent? get withheld;
  @override

  /// A drop Tweet event.
  TweetEvent? get drop;
  @override

  /// A undrop Tweet event.
  TweetEvent? get undrop;
  @override
  @JsonKey(ignore: true)
  _$$_TweetComplianceDataCopyWith<_$_TweetComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}
