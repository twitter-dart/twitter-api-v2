// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trending_location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingLocationData _$TrendingLocationDataFromJson(Map<String, dynamic> json) {
  return _TrendingLocationData.fromJson(json);
}

/// @nodoc
mixin _$TrendingLocationData {
  /// The identifier of location for trending topics.
  @JsonKey(name: 'woeid')
  int get id => throw _privateConstructorUsedError;

  /// The identifier for parent location.
  @JsonKey(name: 'parentid')
  int get parentId => throw _privateConstructorUsedError;

  /// The name of this location.
  String get name => throw _privateConstructorUsedError;

  /// The country name of this location.
  @JsonKey(name: 'country')
  String get countryName => throw _privateConstructorUsedError;

  /// The country code of this location.
  @JsonKey(name: 'countryCode')
  Country? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingLocationDataCopyWith<TrendingLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingLocationDataCopyWith<$Res> {
  factory $TrendingLocationDataCopyWith(TrendingLocationData value,
          $Res Function(TrendingLocationData) then) =
      _$TrendingLocationDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'woeid') int id,
      @JsonKey(name: 'parentid') int parentId,
      String name,
      @JsonKey(name: 'country') String countryName,
      @JsonKey(name: 'countryCode') Country? country});
}

/// @nodoc
class _$TrendingLocationDataCopyWithImpl<$Res>
    implements $TrendingLocationDataCopyWith<$Res> {
  _$TrendingLocationDataCopyWithImpl(this._value, this._then);

  final TrendingLocationData _value;
  // ignore: unused_field
  final $Res Function(TrendingLocationData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? countryName = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc
abstract class _$$_TrendingLocationDataCopyWith<$Res>
    implements $TrendingLocationDataCopyWith<$Res> {
  factory _$$_TrendingLocationDataCopyWith(_$_TrendingLocationData value,
          $Res Function(_$_TrendingLocationData) then) =
      __$$_TrendingLocationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'woeid') int id,
      @JsonKey(name: 'parentid') int parentId,
      String name,
      @JsonKey(name: 'country') String countryName,
      @JsonKey(name: 'countryCode') Country? country});
}

/// @nodoc
class __$$_TrendingLocationDataCopyWithImpl<$Res>
    extends _$TrendingLocationDataCopyWithImpl<$Res>
    implements _$$_TrendingLocationDataCopyWith<$Res> {
  __$$_TrendingLocationDataCopyWithImpl(_$_TrendingLocationData _value,
      $Res Function(_$_TrendingLocationData) _then)
      : super(_value, (v) => _then(v as _$_TrendingLocationData));

  @override
  _$_TrendingLocationData get _value => super._value as _$_TrendingLocationData;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? countryName = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_TrendingLocationData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_TrendingLocationData implements _TrendingLocationData {
  const _$_TrendingLocationData(
      {@JsonKey(name: 'woeid') required this.id,
      @JsonKey(name: 'parentid') required this.parentId,
      required this.name,
      @JsonKey(name: 'country') required this.countryName,
      @JsonKey(name: 'countryCode') required this.country});

  factory _$_TrendingLocationData.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingLocationDataFromJson(json);

  /// The identifier of location for trending topics.
  @override
  @JsonKey(name: 'woeid')
  final int id;

  /// The identifier for parent location.
  @override
  @JsonKey(name: 'parentid')
  final int parentId;

  /// The name of this location.
  @override
  final String name;

  /// The country name of this location.
  @override
  @JsonKey(name: 'country')
  final String countryName;

  /// The country code of this location.
  @override
  @JsonKey(name: 'countryCode')
  final Country? country;

  @override
  String toString() {
    return 'TrendingLocationData(id: $id, parentId: $parentId, name: $name, countryName: $countryName, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingLocationData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(countryName),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingLocationDataCopyWith<_$_TrendingLocationData> get copyWith =>
      __$$_TrendingLocationDataCopyWithImpl<_$_TrendingLocationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingLocationDataToJson(
      this,
    );
  }
}

abstract class _TrendingLocationData implements TrendingLocationData {
  const factory _TrendingLocationData(
          {@JsonKey(name: 'woeid') required final int id,
          @JsonKey(name: 'parentid') required final int parentId,
          required final String name,
          @JsonKey(name: 'country') required final String countryName,
          @JsonKey(name: 'countryCode') required final Country? country}) =
      _$_TrendingLocationData;

  factory _TrendingLocationData.fromJson(Map<String, dynamic> json) =
      _$_TrendingLocationData.fromJson;

  @override

  /// The identifier of location for trending topics.
  @JsonKey(name: 'woeid')
  int get id;
  @override

  /// The identifier for parent location.
  @JsonKey(name: 'parentid')
  int get parentId;
  @override

  /// The name of this location.
  String get name;
  @override

  /// The country name of this location.
  @JsonKey(name: 'country')
  String get countryName;
  @override

  /// The country code of this location.
  @JsonKey(name: 'countryCode')
  Country? get country;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingLocationDataCopyWith<_$_TrendingLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}
