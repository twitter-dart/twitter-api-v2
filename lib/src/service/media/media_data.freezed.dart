// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaData _$MediaDataFromJson(Map<String, dynamic> json) {
  return _MediaData.fromJson(json);
}

/// @nodoc
mixin _$MediaData {
  @JsonKey(name: 'media_key')
  String get key => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaDataCopyWith<MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDataCopyWith<$Res> {
  factory $MediaDataCopyWith(MediaData value, $Res Function(MediaData) then) =
      _$MediaDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'media_key') String key, MediaType type});
}

/// @nodoc
class _$MediaDataCopyWithImpl<$Res> implements $MediaDataCopyWith<$Res> {
  _$MediaDataCopyWithImpl(this._value, this._then);

  final MediaData _value;
  // ignore: unused_field
  final $Res Function(MediaData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
abstract class _$$_MediaDataCopyWith<$Res> implements $MediaDataCopyWith<$Res> {
  factory _$$_MediaDataCopyWith(
          _$_MediaData value, $Res Function(_$_MediaData) then) =
      __$$_MediaDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'media_key') String key, MediaType type});
}

/// @nodoc
class __$$_MediaDataCopyWithImpl<$Res> extends _$MediaDataCopyWithImpl<$Res>
    implements _$$_MediaDataCopyWith<$Res> {
  __$$_MediaDataCopyWithImpl(
      _$_MediaData _value, $Res Function(_$_MediaData) _then)
      : super(_value, (v) => _then(v as _$_MediaData));

  @override
  _$_MediaData get _value => super._value as _$_MediaData;

  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_MediaData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaData implements _MediaData {
  const _$_MediaData(
      {@JsonKey(name: 'media_key') required this.key, required this.type});

  factory _$_MediaData.fromJson(Map<String, dynamic> json) =>
      _$$_MediaDataFromJson(json);

  @override
  @JsonKey(name: 'media_key')
  final String key;
  @override
  final MediaType type;

  @override
  String toString() {
    return 'MediaData(key: $key, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaData &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      __$$_MediaDataCopyWithImpl<_$_MediaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaDataToJson(this);
  }
}

abstract class _MediaData implements MediaData {
  const factory _MediaData(
      {@JsonKey(name: 'media_key') required final String key,
      required final MediaType type}) = _$_MediaData;

  factory _MediaData.fromJson(Map<String, dynamic> json) =
      _$_MediaData.fromJson;

  @override
  @JsonKey(name: 'media_key')
  String get key => throw _privateConstructorUsedError;
  @override
  MediaType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}
