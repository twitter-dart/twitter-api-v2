// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'protected')
  bool? get isProtected => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified')
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinned_tweet_id')
  String? get pinnedTweetId => throw _privateConstructorUsedError;
  UserEntities? get entities => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_metrics')
  PublicUserMetrics? get publicMetrics => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  UserWithheld? get withheld => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String username,
      String? description,
      String? url,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      String? location,
      @JsonKey(name: 'protected') bool? isProtected,
      @JsonKey(name: 'verified') bool? isVerified,
      @JsonKey(name: 'pinned_tweet_id') String? pinnedTweetId,
      UserEntities? entities,
      @JsonKey(name: 'public_metrics') PublicUserMetrics? publicMetrics,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      UserWithheld? withheld});

  $UserEntitiesCopyWith<$Res>? get entities;
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics;
  $UserWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? profileImageUrl = freezed,
    Object? location = freezed,
    Object? isProtected = freezed,
    Object? isVerified = freezed,
    Object? pinnedTweetId = freezed,
    Object? entities = freezed,
    Object? publicMetrics = freezed,
    Object? createdAt = freezed,
    Object? withheld = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isProtected: isProtected == freezed
          ? _value.isProtected
          : isProtected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinnedTweetId: pinnedTweetId == freezed
          ? _value.pinnedTweetId
          : pinnedTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicUserMetrics?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheld?,
    ));
  }

  @override
  $UserEntitiesCopyWith<$Res>? get entities {
    if (_value.entities == null) {
      return null;
    }

    return $UserEntitiesCopyWith<$Res>(_value.entities!, (value) {
      return _then(_value.copyWith(entities: value));
    });
  }

  @override
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicUserMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }

  @override
  $UserWithheldCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $UserWithheldCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String username,
      String? description,
      String? url,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      String? location,
      @JsonKey(name: 'protected') bool? isProtected,
      @JsonKey(name: 'verified') bool? isVerified,
      @JsonKey(name: 'pinned_tweet_id') String? pinnedTweetId,
      UserEntities? entities,
      @JsonKey(name: 'public_metrics') PublicUserMetrics? publicMetrics,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      UserWithheld? withheld});

  @override
  $UserEntitiesCopyWith<$Res>? get entities;
  @override
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics;
  @override
  $UserWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, (v) => _then(v as _$_UserData));

  @override
  _$_UserData get _value => super._value as _$_UserData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? profileImageUrl = freezed,
    Object? location = freezed,
    Object? isProtected = freezed,
    Object? isVerified = freezed,
    Object? pinnedTweetId = freezed,
    Object? entities = freezed,
    Object? publicMetrics = freezed,
    Object? createdAt = freezed,
    Object? withheld = freezed,
  }) {
    return _then(_$_UserData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isProtected: isProtected == freezed
          ? _value.isProtected
          : isProtected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinnedTweetId: pinnedTweetId == freezed
          ? _value.pinnedTweetId
          : pinnedTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicUserMetrics?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheld?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.id,
      required this.name,
      required this.username,
      this.description,
      this.url,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      this.location,
      @JsonKey(name: 'protected') this.isProtected,
      @JsonKey(name: 'verified') this.isVerified,
      @JsonKey(name: 'pinned_tweet_id') this.pinnedTweetId,
      this.entities,
      @JsonKey(name: 'public_metrics') this.publicMetrics,
      @JsonKey(name: 'created_at') this.createdAt,
      this.withheld});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String? description;
  @override
  final String? url;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  final String? location;
  @override
  @JsonKey(name: 'protected')
  final bool? isProtected;
  @override
  @JsonKey(name: 'verified')
  final bool? isVerified;
  @override
  @JsonKey(name: 'pinned_tweet_id')
  final String? pinnedTweetId;
  @override
  final UserEntities? entities;
  @override
  @JsonKey(name: 'public_metrics')
  final PublicUserMetrics? publicMetrics;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final UserWithheld? withheld;

  @override
  String toString() {
    return 'UserData(id: $id, name: $name, username: $username, description: $description, url: $url, profileImageUrl: $profileImageUrl, location: $location, isProtected: $isProtected, isVerified: $isVerified, pinnedTweetId: $pinnedTweetId, entities: $entities, publicMetrics: $publicMetrics, createdAt: $createdAt, withheld: $withheld)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.profileImageUrl, profileImageUrl) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isProtected, isProtected) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.pinnedTweetId, pinnedTweetId) &&
            const DeepCollectionEquality().equals(other.entities, entities) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.withheld, withheld));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(profileImageUrl),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isProtected),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(pinnedTweetId),
      const DeepCollectionEquality().hash(entities),
      const DeepCollectionEquality().hash(publicMetrics),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(withheld));

  @JsonKey(ignore: true)
  @override
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String id,
      required final String name,
      required final String username,
      final String? description,
      final String? url,
      @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
      final String? location,
      @JsonKey(name: 'protected') final bool? isProtected,
      @JsonKey(name: 'verified') final bool? isVerified,
      @JsonKey(name: 'pinned_tweet_id') final String? pinnedTweetId,
      final UserEntities? entities,
      @JsonKey(name: 'public_metrics') final PublicUserMetrics? publicMetrics,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final UserWithheld? withheld}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  @override
  String? get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'protected')
  bool? get isProtected => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'verified')
  bool? get isVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pinned_tweet_id')
  String? get pinnedTweetId => throw _privateConstructorUsedError;
  @override
  UserEntities? get entities => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'public_metrics')
  PublicUserMetrics? get publicMetrics => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  UserWithheld? get withheld => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
