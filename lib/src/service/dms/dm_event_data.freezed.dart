// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dm_event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DMEventData _$DMEventDataFromJson(Map<String, dynamic> json) {
  return _DMEventData.fromJson(json);
}

/// @nodoc
mixin _$DMEventData {
  /// The id of the Direct Message event.
  String get id => throw _privateConstructorUsedError;

  /// The type of event.
  DMEventType get eventType => throw _privateConstructorUsedError;

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

  /// The attached urls and media information for expansion.
  DMAttachments? get attachments => throw _privateConstructorUsedError;

  /// The timestamp of the Direct Message event creation.
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DMEventDataCopyWith<DMEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMEventDataCopyWith<$Res> {
  factory $DMEventDataCopyWith(
          DMEventData value, $Res Function(DMEventData) then) =
      _$DMEventDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DMEventType eventType,
      String? text,
      String? senderId,
      @JsonKey(name: 'dm_conversation_id') String? conversationId,
      List<DMReferencedTweet>? referencedTweets,
      DMAttachments? attachments,
      DateTime? createdAt});

  $DMAttachmentsCopyWith<$Res>? get attachments;
}

/// @nodoc
class _$DMEventDataCopyWithImpl<$Res> implements $DMEventDataCopyWith<$Res> {
  _$DMEventDataCopyWithImpl(this._value, this._then);

  final DMEventData _value;
  // ignore: unused_field
  final $Res Function(DMEventData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventType = freezed,
    Object? text = freezed,
    Object? senderId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? attachments = freezed,
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
              as DMEventType,
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
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as DMAttachments?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $DMAttachmentsCopyWith<$Res>? get attachments {
    if (_value.attachments == null) {
      return null;
    }

    return $DMAttachmentsCopyWith<$Res>(_value.attachments!, (value) {
      return _then(_value.copyWith(attachments: value));
    });
  }
}

/// @nodoc
abstract class _$$_DMEventDataCopyWith<$Res>
    implements $DMEventDataCopyWith<$Res> {
  factory _$$_DMEventDataCopyWith(
          _$_DMEventData value, $Res Function(_$_DMEventData) then) =
      __$$_DMEventDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DMEventType eventType,
      String? text,
      String? senderId,
      @JsonKey(name: 'dm_conversation_id') String? conversationId,
      List<DMReferencedTweet>? referencedTweets,
      DMAttachments? attachments,
      DateTime? createdAt});

  @override
  $DMAttachmentsCopyWith<$Res>? get attachments;
}

/// @nodoc
class __$$_DMEventDataCopyWithImpl<$Res> extends _$DMEventDataCopyWithImpl<$Res>
    implements _$$_DMEventDataCopyWith<$Res> {
  __$$_DMEventDataCopyWithImpl(
      _$_DMEventData _value, $Res Function(_$_DMEventData) _then)
      : super(_value, (v) => _then(v as _$_DMEventData));

  @override
  _$_DMEventData get _value => super._value as _$_DMEventData;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventType = freezed,
    Object? text = freezed,
    Object? senderId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? attachments = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_DMEventData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as DMEventType,
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
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as DMAttachments?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_DMEventData implements _DMEventData {
  const _$_DMEventData(
      {required this.id,
      required this.eventType,
      this.text,
      this.senderId,
      @JsonKey(name: 'dm_conversation_id') this.conversationId,
      final List<DMReferencedTweet>? referencedTweets,
      this.attachments,
      this.createdAt})
      : _referencedTweets = referencedTweets;

  factory _$_DMEventData.fromJson(Map<String, dynamic> json) =>
      _$$_DMEventDataFromJson(json);

  /// The id of the Direct Message event.
  @override
  final String id;

  /// The type of event.
  @override
  final DMEventType eventType;

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

  /// The attached urls and media information for expansion.
  @override
  final DMAttachments? attachments;

  /// The timestamp of the Direct Message event creation.
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DMEventData(id: $id, eventType: $eventType, text: $text, senderId: $senderId, conversationId: $conversationId, referencedTweets: $referencedTweets, attachments: $attachments, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DMEventData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.eventType, eventType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality()
                .equals(other.conversationId, conversationId) &&
            const DeepCollectionEquality()
                .equals(other._referencedTweets, _referencedTweets) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
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
      const DeepCollectionEquality().hash(attachments),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_DMEventDataCopyWith<_$_DMEventData> get copyWith =>
      __$$_DMEventDataCopyWithImpl<_$_DMEventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DMEventDataToJson(
      this,
    );
  }
}

abstract class _DMEventData implements DMEventData {
  const factory _DMEventData(
      {required final String id,
      required final DMEventType eventType,
      final String? text,
      final String? senderId,
      @JsonKey(name: 'dm_conversation_id') final String? conversationId,
      final List<DMReferencedTweet>? referencedTweets,
      final DMAttachments? attachments,
      final DateTime? createdAt}) = _$_DMEventData;

  factory _DMEventData.fromJson(Map<String, dynamic> json) =
      _$_DMEventData.fromJson;

  @override

  /// The id of the Direct Message event.
  String get id;
  @override

  /// The type of event.
  DMEventType get eventType;
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

  /// The attached urls and media information for expansion.
  DMAttachments? get attachments;
  @override

  /// The timestamp of the Direct Message event creation.
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DMEventDataCopyWith<_$_DMEventData> get copyWith =>
      throw _privateConstructorUsedError;
}
