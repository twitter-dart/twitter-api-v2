// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'referenced_tweet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferencedTweetData _$ReferencedTweetDataFromJson(Map<String, dynamic> json) {
  return _ReferencedTweetData.fromJson(json);
}

/// @nodoc
mixin _$ReferencedTweetData {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferencedTweetDataCopyWith<ReferencedTweetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferencedTweetDataCopyWith<$Res> {
  factory $ReferencedTweetDataCopyWith(
          ReferencedTweetData value, $Res Function(ReferencedTweetData) then) =
      _$ReferencedTweetDataCopyWithImpl<$Res>;
  $Res call({String id, String type});
}

/// @nodoc
class _$ReferencedTweetDataCopyWithImpl<$Res>
    implements $ReferencedTweetDataCopyWith<$Res> {
  _$ReferencedTweetDataCopyWithImpl(this._value, this._then);

  final ReferencedTweetData _value;
  // ignore: unused_field
  final $Res Function(ReferencedTweetData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReferencedTweetDataCopyWith<$Res>
    implements $ReferencedTweetDataCopyWith<$Res> {
  factory _$$_ReferencedTweetDataCopyWith(_$_ReferencedTweetData value,
          $Res Function(_$_ReferencedTweetData) then) =
      __$$_ReferencedTweetDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String type});
}

/// @nodoc
class __$$_ReferencedTweetDataCopyWithImpl<$Res>
    extends _$ReferencedTweetDataCopyWithImpl<$Res>
    implements _$$_ReferencedTweetDataCopyWith<$Res> {
  __$$_ReferencedTweetDataCopyWithImpl(_$_ReferencedTweetData _value,
      $Res Function(_$_ReferencedTweetData) _then)
      : super(_value, (v) => _then(v as _$_ReferencedTweetData));

  @override
  _$_ReferencedTweetData get _value => super._value as _$_ReferencedTweetData;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ReferencedTweetData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferencedTweetData implements _ReferencedTweetData {
  const _$_ReferencedTweetData({required this.id, required this.type});

  factory _$_ReferencedTweetData.fromJson(Map<String, dynamic> json) =>
      _$$_ReferencedTweetDataFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'ReferencedTweetData(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferencedTweetData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_ReferencedTweetDataCopyWith<_$_ReferencedTweetData> get copyWith =>
      __$$_ReferencedTweetDataCopyWithImpl<_$_ReferencedTweetData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferencedTweetDataToJson(this);
  }
}

abstract class _ReferencedTweetData implements ReferencedTweetData {
  const factory _ReferencedTweetData(
      {required final String id,
      required final String type}) = _$_ReferencedTweetData;

  factory _ReferencedTweetData.fromJson(Map<String, dynamic> json) =
      _$_ReferencedTweetData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReferencedTweetDataCopyWith<_$_ReferencedTweetData> get copyWith =>
      throw _privateConstructorUsedError;
}
