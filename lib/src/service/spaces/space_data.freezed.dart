// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceData _$SpaceDataFromJson(Map<String, dynamic> json) {
  return _SpaceData.fromJson(json);
}

/// @nodoc
mixin _$SpaceData {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  SpaceState? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  String? get creatorId => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'host_ids')
  List<String>? get hostIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_ids')
  List<String>? get topicIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'speaker_ids')
  List<String>? get speakerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'invited_user_ids')
  List<String>? get invitedUserIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_count')
  int? get participantCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_ticketed')
  bool? get isTicketed => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_start')
  DateTime? get scheduledStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceDataCopyWith<SpaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceDataCopyWith<$Res> {
  factory $SpaceDataCopyWith(SpaceData value, $Res Function(SpaceData) then) =
      _$SpaceDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? title,
      SpaceState? state,
      @JsonKey(name: 'creator_id') String? creatorId,
      String? lang,
      @JsonKey(name: 'host_ids') List<String>? hostIds,
      @JsonKey(name: 'topic_ids') List<String>? topicIds,
      @JsonKey(name: 'speaker_ids') List<String>? speakerIds,
      @JsonKey(name: 'invited_user_ids') List<String>? invitedUserIds,
      @JsonKey(name: 'subscriber_count') int? subscriberCount,
      @JsonKey(name: 'participant_count') int? participantCount,
      @JsonKey(name: 'is_ticketed') bool? isTicketed,
      @JsonKey(name: 'scheduled_start') DateTime? scheduledStart,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$SpaceDataCopyWithImpl<$Res> implements $SpaceDataCopyWith<$Res> {
  _$SpaceDataCopyWithImpl(this._value, this._then);

  final SpaceData _value;
  // ignore: unused_field
  final $Res Function(SpaceData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? state = freezed,
    Object? creatorId = freezed,
    Object? lang = freezed,
    Object? hostIds = freezed,
    Object? topicIds = freezed,
    Object? speakerIds = freezed,
    Object? invitedUserIds = freezed,
    Object? subscriberCount = freezed,
    Object? participantCount = freezed,
    Object? isTicketed = freezed,
    Object? scheduledStart = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SpaceState?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      hostIds: hostIds == freezed
          ? _value.hostIds
          : hostIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topicIds: topicIds == freezed
          ? _value.topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      speakerIds: speakerIds == freezed
          ? _value.speakerIds
          : speakerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      invitedUserIds: invitedUserIds == freezed
          ? _value.invitedUserIds
          : invitedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      participantCount: participantCount == freezed
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isTicketed: isTicketed == freezed
          ? _value.isTicketed
          : isTicketed // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduledStart: scheduledStart == freezed
          ? _value.scheduledStart
          : scheduledStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpaceDataCopyWith<$Res> implements $SpaceDataCopyWith<$Res> {
  factory _$$_SpaceDataCopyWith(
          _$_SpaceData value, $Res Function(_$_SpaceData) then) =
      __$$_SpaceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? title,
      SpaceState? state,
      @JsonKey(name: 'creator_id') String? creatorId,
      String? lang,
      @JsonKey(name: 'host_ids') List<String>? hostIds,
      @JsonKey(name: 'topic_ids') List<String>? topicIds,
      @JsonKey(name: 'speaker_ids') List<String>? speakerIds,
      @JsonKey(name: 'invited_user_ids') List<String>? invitedUserIds,
      @JsonKey(name: 'subscriber_count') int? subscriberCount,
      @JsonKey(name: 'participant_count') int? participantCount,
      @JsonKey(name: 'is_ticketed') bool? isTicketed,
      @JsonKey(name: 'scheduled_start') DateTime? scheduledStart,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_SpaceDataCopyWithImpl<$Res> extends _$SpaceDataCopyWithImpl<$Res>
    implements _$$_SpaceDataCopyWith<$Res> {
  __$$_SpaceDataCopyWithImpl(
      _$_SpaceData _value, $Res Function(_$_SpaceData) _then)
      : super(_value, (v) => _then(v as _$_SpaceData));

  @override
  _$_SpaceData get _value => super._value as _$_SpaceData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? state = freezed,
    Object? creatorId = freezed,
    Object? lang = freezed,
    Object? hostIds = freezed,
    Object? topicIds = freezed,
    Object? speakerIds = freezed,
    Object? invitedUserIds = freezed,
    Object? subscriberCount = freezed,
    Object? participantCount = freezed,
    Object? isTicketed = freezed,
    Object? scheduledStart = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_SpaceData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SpaceState?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      hostIds: hostIds == freezed
          ? _value._hostIds
          : hostIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topicIds: topicIds == freezed
          ? _value._topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      speakerIds: speakerIds == freezed
          ? _value._speakerIds
          : speakerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      invitedUserIds: invitedUserIds == freezed
          ? _value._invitedUserIds
          : invitedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      participantCount: participantCount == freezed
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isTicketed: isTicketed == freezed
          ? _value.isTicketed
          : isTicketed // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduledStart: scheduledStart == freezed
          ? _value.scheduledStart
          : scheduledStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpaceData implements _SpaceData {
  const _$_SpaceData(
      {required this.id,
      this.title,
      this.state,
      @JsonKey(name: 'creator_id') this.creatorId,
      this.lang,
      @JsonKey(name: 'host_ids') final List<String>? hostIds,
      @JsonKey(name: 'topic_ids') final List<String>? topicIds,
      @JsonKey(name: 'speaker_ids') final List<String>? speakerIds,
      @JsonKey(name: 'invited_user_ids') final List<String>? invitedUserIds,
      @JsonKey(name: 'subscriber_count') this.subscriberCount,
      @JsonKey(name: 'participant_count') this.participantCount,
      @JsonKey(name: 'is_ticketed') this.isTicketed,
      @JsonKey(name: 'scheduled_start') this.scheduledStart,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _hostIds = hostIds,
        _topicIds = topicIds,
        _speakerIds = speakerIds,
        _invitedUserIds = invitedUserIds;

  factory _$_SpaceData.fromJson(Map<String, dynamic> json) =>
      _$$_SpaceDataFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final SpaceState? state;
  @override
  @JsonKey(name: 'creator_id')
  final String? creatorId;
  @override
  final String? lang;
  final List<String>? _hostIds;
  @override
  @JsonKey(name: 'host_ids')
  List<String>? get hostIds {
    final value = _hostIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _topicIds;
  @override
  @JsonKey(name: 'topic_ids')
  List<String>? get topicIds {
    final value = _topicIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _speakerIds;
  @override
  @JsonKey(name: 'speaker_ids')
  List<String>? get speakerIds {
    final value = _speakerIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _invitedUserIds;
  @override
  @JsonKey(name: 'invited_user_ids')
  List<String>? get invitedUserIds {
    final value = _invitedUserIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'subscriber_count')
  final int? subscriberCount;
  @override
  @JsonKey(name: 'participant_count')
  final int? participantCount;
  @override
  @JsonKey(name: 'is_ticketed')
  final bool? isTicketed;
  @override
  @JsonKey(name: 'scheduled_start')
  final DateTime? scheduledStart;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SpaceData(id: $id, title: $title, state: $state, creatorId: $creatorId, lang: $lang, hostIds: $hostIds, topicIds: $topicIds, speakerIds: $speakerIds, invitedUserIds: $invitedUserIds, subscriberCount: $subscriberCount, participantCount: $participantCount, isTicketed: $isTicketed, scheduledStart: $scheduledStart, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpaceData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality().equals(other._hostIds, _hostIds) &&
            const DeepCollectionEquality().equals(other._topicIds, _topicIds) &&
            const DeepCollectionEquality()
                .equals(other._speakerIds, _speakerIds) &&
            const DeepCollectionEquality()
                .equals(other._invitedUserIds, _invitedUserIds) &&
            const DeepCollectionEquality()
                .equals(other.subscriberCount, subscriberCount) &&
            const DeepCollectionEquality()
                .equals(other.participantCount, participantCount) &&
            const DeepCollectionEquality()
                .equals(other.isTicketed, isTicketed) &&
            const DeepCollectionEquality()
                .equals(other.scheduledStart, scheduledStart) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(creatorId),
      const DeepCollectionEquality().hash(lang),
      const DeepCollectionEquality().hash(_hostIds),
      const DeepCollectionEquality().hash(_topicIds),
      const DeepCollectionEquality().hash(_speakerIds),
      const DeepCollectionEquality().hash(_invitedUserIds),
      const DeepCollectionEquality().hash(subscriberCount),
      const DeepCollectionEquality().hash(participantCount),
      const DeepCollectionEquality().hash(isTicketed),
      const DeepCollectionEquality().hash(scheduledStart),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_SpaceDataCopyWith<_$_SpaceData> get copyWith =>
      __$$_SpaceDataCopyWithImpl<_$_SpaceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpaceDataToJson(this);
  }
}

abstract class _SpaceData implements SpaceData {
  const factory _SpaceData(
      {required final String id,
      final String? title,
      final SpaceState? state,
      @JsonKey(name: 'creator_id') final String? creatorId,
      final String? lang,
      @JsonKey(name: 'host_ids') final List<String>? hostIds,
      @JsonKey(name: 'topic_ids') final List<String>? topicIds,
      @JsonKey(name: 'speaker_ids') final List<String>? speakerIds,
      @JsonKey(name: 'invited_user_ids') final List<String>? invitedUserIds,
      @JsonKey(name: 'subscriber_count') final int? subscriberCount,
      @JsonKey(name: 'participant_count') final int? participantCount,
      @JsonKey(name: 'is_ticketed') final bool? isTicketed,
      @JsonKey(name: 'scheduled_start') final DateTime? scheduledStart,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_SpaceData;

  factory _SpaceData.fromJson(Map<String, dynamic> json) =
      _$_SpaceData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  SpaceState? get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_id')
  String? get creatorId => throw _privateConstructorUsedError;
  @override
  String? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'host_ids')
  List<String>? get hostIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_ids')
  List<String>? get topicIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'speaker_ids')
  List<String>? get speakerIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'invited_user_ids')
  List<String>? get invitedUserIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'participant_count')
  int? get participantCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_ticketed')
  bool? get isTicketed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'scheduled_start')
  DateTime? get scheduledStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpaceDataCopyWith<_$_SpaceData> get copyWith =>
      throw _privateConstructorUsedError;
}
