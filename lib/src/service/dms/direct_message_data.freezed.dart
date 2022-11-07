// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'direct_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectMessageData _$DirectMessageDataFromJson(Map<String, dynamic> json) {
  return _DirectMessageData.fromJson(json);
}

/// @nodoc
mixin _$DirectMessageData {
  /// The id of the Direct Message event.
  String get id => throw _privateConstructorUsedError;

  /// The type of event.
  DirectMessageEventType get eventType => throw _privateConstructorUsedError;

  /// The text included in the Direct Message.
  String? get text => throw _privateConstructorUsedError;

  /// The id of the user who sent the Direct Message.
  String? get senderId => throw _privateConstructorUsedError;

  /// The id of the Direct Message to which the event belongs.
  @JsonKey(name: 'dm_conversation_id')
  String? get conversationId => throw _privateConstructorUsedError;

  /// Expansion of a "shared" Tweet in the Direct Message.
  ///
  /// If the parent Tweet is a Retweet, a Retweet with comment
  /// (also known as Quoted Tweet) or a Reply, it will include the
  /// related Tweet referenced to by its parent.
  List<DMReferencedTweet>? get referencedTweets =>
      throw _privateConstructorUsedError;

  /// The timestamp of the Direct Message event creation.
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectMessageDataCopyWith<DirectMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectMessageDataCopyWith<$Res> {
  factory $DirectMessageDataCopyWith(
          DirectMessageData value, $Res Function(DirectMessageData) then) =
      _$DirectMessageDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DirectMessageEventType eventType,
      String? text,
      String? senderId,
      @JsonKey(name: 'dm_conversation_id') String? conversationId,
      List<DMReferencedTweet>? referencedTweets,
      DateTime? createdAt});
}

/// @nodoc
class _$DirectMessageDataCopyWithImpl<$Res>
    implements $DirectMessageDataCopyWith<$Res> {
  _$DirectMessageDataCopyWithImpl(this._value, this._then);

  final DirectMessageData _value;
  // ignore: unused_field
  final $Res Function(DirectMessageData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventType = freezed,
    Object? text = freezed,
    Object? senderId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as DirectMessageEventType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value.referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<DMReferencedTweet>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_DirectMessageDataCopyWith<$Res>
    implements $DirectMessageDataCopyWith<$Res> {
  factory _$$_DirectMessageDataCopyWith(_$_DirectMessageData value,
          $Res Function(_$_DirectMessageData) then) =
      __$$_DirectMessageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DirectMessageEventType eventType,
      String? text,
      String? senderId,
      @JsonKey(name: 'dm_conversation_id') String? conversationId,
      List<DMReferencedTweet>? referencedTweets,
      DateTime? createdAt});
}

/// @nodoc
class __$$_DirectMessageDataCopyWithImpl<$Res>
    extends _$DirectMessageDataCopyWithImpl<$Res>
    implements _$$_DirectMessageDataCopyWith<$Res> {
  __$$_DirectMessageDataCopyWithImpl(
      _$_DirectMessageData _value, $Res Function(_$_DirectMessageData) _then)
      : super(_value, (v) => _then(v as _$_DirectMessageData));

  @override
  _$_DirectMessageData get _value => super._value as _$_DirectMessageData;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventType = freezed,
    Object? text = freezed,
    Object? senderId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_DirectMessageData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as DirectMessageEventType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value._referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<DMReferencedTweet>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectMessageData implements _DirectMessageData {
  const _$_DirectMessageData(
      {required this.id,
      required this.eventType,
      this.text,
      this.senderId,
      @JsonKey(name: 'dm_conversation_id') this.conversationId,
      final List<DMReferencedTweet>? referencedTweets,
      this.createdAt})
      : _referencedTweets = referencedTweets;

  factory _$_DirectMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_DirectMessageDataFromJson(json);

  /// The id of the Direct Message event.
  @override
  final String id;

  /// The type of event.
  @override
  final DirectMessageEventType eventType;

  /// The text included in the Direct Message.
  @override
  final String? text;

  /// The id of the user who sent the Direct Message.
  @override
  final String? senderId;

  /// The id of the Direct Message to which the event belongs.
  @override
  @JsonKey(name: 'dm_conversation_id')
  final String? conversationId;

  /// Expansion of a "shared" Tweet in the Direct Message.
  ///
  /// If the parent Tweet is a Retweet, a Retweet with comment
  /// (also known as Quoted Tweet) or a Reply, it will include the
  /// related Tweet referenced to by its parent.
  final List<DMReferencedTweet>? _referencedTweets;

  /// Expansion of a "shared" Tweet in the Direct Message.
  ///
  /// If the parent Tweet is a Retweet, a Retweet with comment
  /// (also known as Quoted Tweet) or a Reply, it will include the
  /// related Tweet referenced to by its parent.
  @override
  List<DMReferencedTweet>? get referencedTweets {
    final value = _referencedTweets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The timestamp of the Direct Message event creation.
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DirectMessageData(id: $id, eventType: $eventType, text: $text, senderId: $senderId, conversationId: $conversationId, referencedTweets: $referencedTweets, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectMessageData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.eventType, eventType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality()
                .equals(other.conversationId, conversationId) &&
            const DeepCollectionEquality()
                .equals(other._referencedTweets, _referencedTweets) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(eventType),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(conversationId),
      const DeepCollectionEquality().hash(_referencedTweets),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_DirectMessageDataCopyWith<_$_DirectMessageData> get copyWith =>
      __$$_DirectMessageDataCopyWithImpl<_$_DirectMessageData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectMessageDataToJson(
      this,
    );
  }
}

abstract class _DirectMessageData implements DirectMessageData {
  const factory _DirectMessageData(
      {required final String id,
      required final DirectMessageEventType eventType,
      final String? text,
      final String? senderId,
      @JsonKey(name: 'dm_conversation_id') final String? conversationId,
      final List<DMReferencedTweet>? referencedTweets,
      final DateTime? createdAt}) = _$_DirectMessageData;

  factory _DirectMessageData.fromJson(Map<String, dynamic> json) =
      _$_DirectMessageData.fromJson;

  @override

  /// The id of the Direct Message event.
  String get id;
  @override

  /// The type of event.
  DirectMessageEventType get eventType;
  @override

  /// The text included in the Direct Message.
  String? get text;
  @override

  /// The id of the user who sent the Direct Message.
  String? get senderId;
  @override

  /// The id of the Direct Message to which the event belongs.
  @JsonKey(name: 'dm_conversation_id')
  String? get conversationId;
  @override

  /// Expansion of a "shared" Tweet in the Direct Message.
  ///
  /// If the parent Tweet is a Retweet, a Retweet with comment
  /// (also known as Quoted Tweet) or a Reply, it will include the
  /// related Tweet referenced to by its parent.
  List<DMReferencedTweet>? get referencedTweets;
  @override

  /// The timestamp of the Direct Message event creation.
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DirectMessageDataCopyWith<_$_DirectMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}
