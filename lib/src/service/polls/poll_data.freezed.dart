// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollData _$PollDataFromJson(Map<String, dynamic> json) {
  return _PollData.fromJson(json);
}

/// @nodoc
mixin _$PollData {
  String get id => throw _privateConstructorUsedError;
  List<PollOption> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollDataCopyWith<PollData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollDataCopyWith<$Res> {
  factory $PollDataCopyWith(PollData value, $Res Function(PollData) then) =
      _$PollDataCopyWithImpl<$Res>;
  $Res call({String id, List<PollOption> options});
}

/// @nodoc
class _$PollDataCopyWithImpl<$Res> implements $PollDataCopyWith<$Res> {
  _$PollDataCopyWithImpl(this._value, this._then);

  final PollData _value;
  // ignore: unused_field
  final $Res Function(PollData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
    ));
  }
}

/// @nodoc
abstract class _$$_PollDataCopyWith<$Res> implements $PollDataCopyWith<$Res> {
  factory _$$_PollDataCopyWith(
          _$_PollData value, $Res Function(_$_PollData) then) =
      __$$_PollDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<PollOption> options});
}

/// @nodoc
class __$$_PollDataCopyWithImpl<$Res> extends _$PollDataCopyWithImpl<$Res>
    implements _$$_PollDataCopyWith<$Res> {
  __$$_PollDataCopyWithImpl(
      _$_PollData _value, $Res Function(_$_PollData) _then)
      : super(_value, (v) => _then(v as _$_PollData));

  @override
  _$_PollData get _value => super._value as _$_PollData;

  @override
  $Res call({
    Object? id = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_PollData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollData implements _PollData {
  const _$_PollData({required this.id, required final List<PollOption> options})
      : _options = options;

  factory _$_PollData.fromJson(Map<String, dynamic> json) =>
      _$$_PollDataFromJson(json);

  @override
  final String id;
  final List<PollOption> _options;
  @override
  List<PollOption> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'PollData(id: $id, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  _$$_PollDataCopyWith<_$_PollData> get copyWith =>
      __$$_PollDataCopyWithImpl<_$_PollData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollDataToJson(this);
  }
}

abstract class _PollData implements PollData {
  const factory _PollData(
      {required final String id,
      required final List<PollOption> options}) = _$_PollData;

  factory _PollData.fromJson(Map<String, dynamic> json) = _$_PollData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<PollOption> get options => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PollDataCopyWith<_$_PollData> get copyWith =>
      throw _privateConstructorUsedError;
}
