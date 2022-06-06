// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetData _$TweetDataFromJson(Map<String, dynamic> json) {
  return _TweetData.fromJson(json);
}

/// @nodoc
mixin _$TweetData {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get authorId => throw _privateConstructorUsedError;
  String? get inReplyToUserId => throw _privateConstructorUsedError;
  String? get conversationId => throw _privateConstructorUsedError;
  List<ReferencedTweet>? get referencedTweets =>
      throw _privateConstructorUsedError;
  List<TweetContextAnnotationGroup>? get contextAnnotations =>
      throw _privateConstructorUsedError;
  TweetEntities? get entities => throw _privateConstructorUsedError;
  TweetAttachments? get attachments => throw _privateConstructorUsedError;
  PublicTweetMetrics? get publicMetrics => throw _privateConstructorUsedError;
  Geo? get geo => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'possibly_sensitive')
  bool? get isPossiblySensitive => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_settings')
  ReplySetting? get replySetting => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  TweetWithheld? get withheld => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetDataCopyWith<TweetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetDataCopyWith<$Res> {
  factory $TweetDataCopyWith(TweetData value, $Res Function(TweetData) then) =
      _$TweetDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      String? authorId,
      String? inReplyToUserId,
      String? conversationId,
      List<ReferencedTweet>? referencedTweets,
      List<TweetContextAnnotationGroup>? contextAnnotations,
      TweetEntities? entities,
      TweetAttachments? attachments,
      PublicTweetMetrics? publicMetrics,
      Geo? geo,
      String? lang,
      @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
      String? source,
      TweetWithheld? withheld,
      DateTime? createdAt});

  $TweetEntitiesCopyWith<$Res>? get entities;
  $TweetAttachmentsCopyWith<$Res>? get attachments;
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics;
  $GeoCopyWith<$Res>? get geo;
  $TweetWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class _$TweetDataCopyWithImpl<$Res> implements $TweetDataCopyWith<$Res> {
  _$TweetDataCopyWithImpl(this._value, this._then);

  final TweetData _value;
  // ignore: unused_field
  final $Res Function(TweetData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? inReplyToUserId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? contextAnnotations = freezed,
    Object? entities = freezed,
    Object? attachments = freezed,
    Object? publicMetrics = freezed,
    Object? geo = freezed,
    Object? lang = freezed,
    Object? isPossiblySensitive = freezed,
    Object? replySetting = freezed,
    Object? source = freezed,
    Object? withheld = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToUserId: inReplyToUserId == freezed
          ? _value.inReplyToUserId
          : inReplyToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value.referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<ReferencedTweet>?,
      contextAnnotations: contextAnnotations == freezed
          ? _value.contextAnnotations
          : contextAnnotations // ignore: cast_nullable_to_non_nullable
              as List<TweetContextAnnotationGroup>?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as TweetAttachments?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicTweetMetrics?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      isPossiblySensitive: isPossiblySensitive == freezed
          ? _value.isPossiblySensitive
          : isPossiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      replySetting: replySetting == freezed
          ? _value.replySetting
          : replySetting // ignore: cast_nullable_to_non_nullable
              as ReplySetting?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheld?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $TweetEntitiesCopyWith<$Res>? get entities {
    if (_value.entities == null) {
      return null;
    }

    return $TweetEntitiesCopyWith<$Res>(_value.entities!, (value) {
      return _then(_value.copyWith(entities: value));
    });
  }

  @override
  $TweetAttachmentsCopyWith<$Res>? get attachments {
    if (_value.attachments == null) {
      return null;
    }

    return $TweetAttachmentsCopyWith<$Res>(_value.attachments!, (value) {
      return _then(_value.copyWith(attachments: value));
    });
  }

  @override
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicTweetMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }

  @override
  $GeoCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }

  @override
  $TweetWithheldCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $TweetWithheldCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetDataCopyWith<$Res> implements $TweetDataCopyWith<$Res> {
  factory _$$_TweetDataCopyWith(
          _$_TweetData value, $Res Function(_$_TweetData) then) =
      __$$_TweetDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      String? authorId,
      String? inReplyToUserId,
      String? conversationId,
      List<ReferencedTweet>? referencedTweets,
      List<TweetContextAnnotationGroup>? contextAnnotations,
      TweetEntities? entities,
      TweetAttachments? attachments,
      PublicTweetMetrics? publicMetrics,
      Geo? geo,
      String? lang,
      @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
      String? source,
      TweetWithheld? withheld,
      DateTime? createdAt});

  @override
  $TweetEntitiesCopyWith<$Res>? get entities;
  @override
  $TweetAttachmentsCopyWith<$Res>? get attachments;
  @override
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics;
  @override
  $GeoCopyWith<$Res>? get geo;
  @override
  $TweetWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class __$$_TweetDataCopyWithImpl<$Res> extends _$TweetDataCopyWithImpl<$Res>
    implements _$$_TweetDataCopyWith<$Res> {
  __$$_TweetDataCopyWithImpl(
      _$_TweetData _value, $Res Function(_$_TweetData) _then)
      : super(_value, (v) => _then(v as _$_TweetData));

  @override
  _$_TweetData get _value => super._value as _$_TweetData;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? inReplyToUserId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? contextAnnotations = freezed,
    Object? entities = freezed,
    Object? attachments = freezed,
    Object? publicMetrics = freezed,
    Object? geo = freezed,
    Object? lang = freezed,
    Object? isPossiblySensitive = freezed,
    Object? replySetting = freezed,
    Object? source = freezed,
    Object? withheld = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TweetData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToUserId: inReplyToUserId == freezed
          ? _value.inReplyToUserId
          : inReplyToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value._referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<ReferencedTweet>?,
      contextAnnotations: contextAnnotations == freezed
          ? _value._contextAnnotations
          : contextAnnotations // ignore: cast_nullable_to_non_nullable
              as List<TweetContextAnnotationGroup>?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as TweetAttachments?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicTweetMetrics?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      isPossiblySensitive: isPossiblySensitive == freezed
          ? _value.isPossiblySensitive
          : isPossiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      replySetting: replySetting == freezed
          ? _value.replySetting
          : replySetting // ignore: cast_nullable_to_non_nullable
              as ReplySetting?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheld?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetData implements _TweetData {
  const _$_TweetData(
      {required this.id,
      required this.text,
      this.authorId,
      this.inReplyToUserId,
      this.conversationId,
      final List<ReferencedTweet>? referencedTweets,
      final List<TweetContextAnnotationGroup>? contextAnnotations,
      this.entities,
      this.attachments,
      this.publicMetrics,
      this.geo,
      this.lang,
      @JsonKey(name: 'possibly_sensitive') this.isPossiblySensitive,
      @JsonKey(name: 'reply_settings') this.replySetting,
      this.source,
      this.withheld,
      this.createdAt})
      : _referencedTweets = referencedTweets,
        _contextAnnotations = contextAnnotations;

  factory _$_TweetData.fromJson(Map<String, dynamic> json) =>
      _$$_TweetDataFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String? authorId;
  @override
  final String? inReplyToUserId;
  @override
  final String? conversationId;
  final List<ReferencedTweet>? _referencedTweets;
  @override
  List<ReferencedTweet>? get referencedTweets {
    final value = _referencedTweets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TweetContextAnnotationGroup>? _contextAnnotations;
  @override
  List<TweetContextAnnotationGroup>? get contextAnnotations {
    final value = _contextAnnotations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TweetEntities? entities;
  @override
  final TweetAttachments? attachments;
  @override
  final PublicTweetMetrics? publicMetrics;
  @override
  final Geo? geo;
  @override
  final String? lang;
  @override
  @JsonKey(name: 'possibly_sensitive')
  final bool? isPossiblySensitive;
  @override
  @JsonKey(name: 'reply_settings')
  final ReplySetting? replySetting;
  @override
  final String? source;
  @override
  final TweetWithheld? withheld;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TweetData(id: $id, text: $text, authorId: $authorId, inReplyToUserId: $inReplyToUserId, conversationId: $conversationId, referencedTweets: $referencedTweets, contextAnnotations: $contextAnnotations, entities: $entities, attachments: $attachments, publicMetrics: $publicMetrics, geo: $geo, lang: $lang, isPossiblySensitive: $isPossiblySensitive, replySetting: $replySetting, source: $source, withheld: $withheld, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other.inReplyToUserId, inReplyToUserId) &&
            const DeepCollectionEquality()
                .equals(other.conversationId, conversationId) &&
            const DeepCollectionEquality()
                .equals(other._referencedTweets, _referencedTweets) &&
            const DeepCollectionEquality()
                .equals(other._contextAnnotations, _contextAnnotations) &&
            const DeepCollectionEquality().equals(other.entities, entities) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other.geo, geo) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality()
                .equals(other.isPossiblySensitive, isPossiblySensitive) &&
            const DeepCollectionEquality()
                .equals(other.replySetting, replySetting) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.withheld, withheld) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(inReplyToUserId),
      const DeepCollectionEquality().hash(conversationId),
      const DeepCollectionEquality().hash(_referencedTweets),
      const DeepCollectionEquality().hash(_contextAnnotations),
      const DeepCollectionEquality().hash(entities),
      const DeepCollectionEquality().hash(attachments),
      const DeepCollectionEquality().hash(publicMetrics),
      const DeepCollectionEquality().hash(geo),
      const DeepCollectionEquality().hash(lang),
      const DeepCollectionEquality().hash(isPossiblySensitive),
      const DeepCollectionEquality().hash(replySetting),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(withheld),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_TweetDataCopyWith<_$_TweetData> get copyWith =>
      __$$_TweetDataCopyWithImpl<_$_TweetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetDataToJson(this);
  }
}

abstract class _TweetData implements TweetData {
  const factory _TweetData(
      {required final String id,
      required final String text,
      final String? authorId,
      final String? inReplyToUserId,
      final String? conversationId,
      final List<ReferencedTweet>? referencedTweets,
      final List<TweetContextAnnotationGroup>? contextAnnotations,
      final TweetEntities? entities,
      final TweetAttachments? attachments,
      final PublicTweetMetrics? publicMetrics,
      final Geo? geo,
      final String? lang,
      @JsonKey(name: 'possibly_sensitive') final bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings') final ReplySetting? replySetting,
      final String? source,
      final TweetWithheld? withheld,
      final DateTime? createdAt}) = _$_TweetData;

  factory _TweetData.fromJson(Map<String, dynamic> json) =
      _$_TweetData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String? get authorId => throw _privateConstructorUsedError;
  @override
  String? get inReplyToUserId => throw _privateConstructorUsedError;
  @override
  String? get conversationId => throw _privateConstructorUsedError;
  @override
  List<ReferencedTweet>? get referencedTweets =>
      throw _privateConstructorUsedError;
  @override
  List<TweetContextAnnotationGroup>? get contextAnnotations =>
      throw _privateConstructorUsedError;
  @override
  TweetEntities? get entities => throw _privateConstructorUsedError;
  @override
  TweetAttachments? get attachments => throw _privateConstructorUsedError;
  @override
  PublicTweetMetrics? get publicMetrics => throw _privateConstructorUsedError;
  @override
  Geo? get geo => throw _privateConstructorUsedError;
  @override
  String? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'possibly_sensitive')
  bool? get isPossiblySensitive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'reply_settings')
  ReplySetting? get replySetting => throw _privateConstructorUsedError;
  @override
  String? get source => throw _privateConstructorUsedError;
  @override
  TweetWithheld? get withheld => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetDataCopyWith<_$_TweetData> get copyWith =>
      throw _privateConstructorUsedError;
}
