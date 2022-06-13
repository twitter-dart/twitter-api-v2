// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListData _$ListDataFromJson(Map<String, dynamic> json) {
  return _ListData.fromJson(json);
}

/// @nodoc
mixin _$ListData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get followerCount => throw _privateConstructorUsedError;
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'private')
  bool? get isPrivate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataCopyWith<ListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataCopyWith<$Res> {
  factory $ListDataCopyWith(ListData value, $Res Function(ListData) then) =
      _$ListDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? ownerId,
      DateTime? createdAt,
      String? description,
      int? followerCount,
      int? memberCount,
      @JsonKey(name: 'private') bool? isPrivate});
}

/// @nodoc
class _$ListDataCopyWithImpl<$Res> implements $ListDataCopyWith<$Res> {
  _$ListDataCopyWithImpl(this._value, this._then);

  final ListData _value;
  // ignore: unused_field
  final $Res Function(ListData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? followerCount = freezed,
    Object? memberCount = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListDataCopyWith<$Res> implements $ListDataCopyWith<$Res> {
  factory _$$_ListDataCopyWith(
          _$_ListData value, $Res Function(_$_ListData) then) =
      __$$_ListDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? ownerId,
      DateTime? createdAt,
      String? description,
      int? followerCount,
      int? memberCount,
      @JsonKey(name: 'private') bool? isPrivate});
}

/// @nodoc
class __$$_ListDataCopyWithImpl<$Res> extends _$ListDataCopyWithImpl<$Res>
    implements _$$_ListDataCopyWith<$Res> {
  __$$_ListDataCopyWithImpl(
      _$_ListData _value, $Res Function(_$_ListData) _then)
      : super(_value, (v) => _then(v as _$_ListData));

  @override
  _$_ListData get _value => super._value as _$_ListData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? followerCount = freezed,
    Object? memberCount = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_$_ListData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListData implements _ListData {
  const _$_ListData(
      {required this.id,
      required this.name,
      this.ownerId,
      this.createdAt,
      this.description,
      this.followerCount,
      this.memberCount,
      @JsonKey(name: 'private') this.isPrivate});

  factory _$_ListData.fromJson(Map<String, dynamic> json) =>
      _$$_ListDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? ownerId;
  @override
  final DateTime? createdAt;
  @override
  final String? description;
  @override
  final int? followerCount;
  @override
  final int? memberCount;
  @override
  @JsonKey(name: 'private')
  final bool? isPrivate;

  @override
  String toString() {
    return 'ListData(id: $id, name: $name, ownerId: $ownerId, createdAt: $createdAt, description: $description, followerCount: $followerCount, memberCount: $memberCount, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.followerCount, followerCount) &&
            const DeepCollectionEquality()
                .equals(other.memberCount, memberCount) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(followerCount),
      const DeepCollectionEquality().hash(memberCount),
      const DeepCollectionEquality().hash(isPrivate));

  @JsonKey(ignore: true)
  @override
  _$$_ListDataCopyWith<_$_ListData> get copyWith =>
      __$$_ListDataCopyWithImpl<_$_ListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListDataToJson(this);
  }
}

abstract class _ListData implements ListData {
  const factory _ListData(
      {required final String id,
      required final String name,
      final String? ownerId,
      final DateTime? createdAt,
      final String? description,
      final int? followerCount,
      final int? memberCount,
      @JsonKey(name: 'private') final bool? isPrivate}) = _$_ListData;

  factory _ListData.fromJson(Map<String, dynamic> json) = _$_ListData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get ownerId => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get followerCount => throw _privateConstructorUsedError;
  @override
  int? get memberCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'private')
  bool? get isPrivate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListDataCopyWith<_$_ListData> get copyWith =>
      throw _privateConstructorUsedError;
}
