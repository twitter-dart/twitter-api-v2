// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetUrl _$TweetUrlFromJson(Map<String, dynamic> json) {
  return _TweetUrl.fromJson(json);
}

/// @nodoc
mixin _$TweetUrl {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'expanded_url')
  String get expandedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_url')
  String get displayUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_key')
  String? get mediaKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetUrlCopyWith<TweetUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetUrlCopyWith<$Res> {
  factory $TweetUrlCopyWith(TweetUrl value, $Res Function(TweetUrl) then) =
      _$TweetUrlCopyWithImpl<$Res>;
  $Res call(
      {int start,
      int end,
      String url,
      @JsonKey(name: 'expanded_url') String expandedUrl,
      @JsonKey(name: 'display_url') String displayUrl,
      @JsonKey(name: 'media_key') String? mediaKey});
}

/// @nodoc
class _$TweetUrlCopyWithImpl<$Res> implements $TweetUrlCopyWith<$Res> {
  _$TweetUrlCopyWithImpl(this._value, this._then);

  final TweetUrl _value;
  // ignore: unused_field
  final $Res Function(TweetUrl) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? url = freezed,
    Object? expandedUrl = freezed,
    Object? displayUrl = freezed,
    Object? mediaKey = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expandedUrl: expandedUrl == freezed
          ? _value.expandedUrl
          : expandedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayUrl: displayUrl == freezed
          ? _value.displayUrl
          : displayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaKey: mediaKey == freezed
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetUrlCopyWith<$Res> implements $TweetUrlCopyWith<$Res> {
  factory _$$_TweetUrlCopyWith(
          _$_TweetUrl value, $Res Function(_$_TweetUrl) then) =
      __$$_TweetUrlCopyWithImpl<$Res>;
  @override
  $Res call(
      {int start,
      int end,
      String url,
      @JsonKey(name: 'expanded_url') String expandedUrl,
      @JsonKey(name: 'display_url') String displayUrl,
      @JsonKey(name: 'media_key') String? mediaKey});
}

/// @nodoc
class __$$_TweetUrlCopyWithImpl<$Res> extends _$TweetUrlCopyWithImpl<$Res>
    implements _$$_TweetUrlCopyWith<$Res> {
  __$$_TweetUrlCopyWithImpl(
      _$_TweetUrl _value, $Res Function(_$_TweetUrl) _then)
      : super(_value, (v) => _then(v as _$_TweetUrl));

  @override
  _$_TweetUrl get _value => super._value as _$_TweetUrl;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? url = freezed,
    Object? expandedUrl = freezed,
    Object? displayUrl = freezed,
    Object? mediaKey = freezed,
  }) {
    return _then(_$_TweetUrl(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expandedUrl: expandedUrl == freezed
          ? _value.expandedUrl
          : expandedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayUrl: displayUrl == freezed
          ? _value.displayUrl
          : displayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaKey: mediaKey == freezed
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetUrl implements _TweetUrl {
  const _$_TweetUrl(
      {required this.start,
      required this.end,
      required this.url,
      @JsonKey(name: 'expanded_url') required this.expandedUrl,
      @JsonKey(name: 'display_url') required this.displayUrl,
      @JsonKey(name: 'media_key') this.mediaKey});

  factory _$_TweetUrl.fromJson(Map<String, dynamic> json) =>
      _$$_TweetUrlFromJson(json);

  @override
  final int start;
  @override
  final int end;
  @override
  final String url;
  @override
  @JsonKey(name: 'expanded_url')
  final String expandedUrl;
  @override
  @JsonKey(name: 'display_url')
  final String displayUrl;
  @override
  @JsonKey(name: 'media_key')
  final String? mediaKey;

  @override
  String toString() {
    return 'TweetUrl(start: $start, end: $end, url: $url, expandedUrl: $expandedUrl, displayUrl: $displayUrl, mediaKey: $mediaKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetUrl &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.expandedUrl, expandedUrl) &&
            const DeepCollectionEquality()
                .equals(other.displayUrl, displayUrl) &&
            const DeepCollectionEquality().equals(other.mediaKey, mediaKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(expandedUrl),
      const DeepCollectionEquality().hash(displayUrl),
      const DeepCollectionEquality().hash(mediaKey));

  @JsonKey(ignore: true)
  @override
  _$$_TweetUrlCopyWith<_$_TweetUrl> get copyWith =>
      __$$_TweetUrlCopyWithImpl<_$_TweetUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetUrlToJson(this);
  }
}

abstract class _TweetUrl implements TweetUrl {
  const factory _TweetUrl(
      {required final int start,
      required final int end,
      required final String url,
      @JsonKey(name: 'expanded_url') required final String expandedUrl,
      @JsonKey(name: 'display_url') required final String displayUrl,
      @JsonKey(name: 'media_key') final String? mediaKey}) = _$_TweetUrl;

  factory _TweetUrl.fromJson(Map<String, dynamic> json) = _$_TweetUrl.fromJson;

  @override
  int get start => throw _privateConstructorUsedError;
  @override
  int get end => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expanded_url')
  String get expandedUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_url')
  String get displayUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'media_key')
  String? get mediaKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TweetUrlCopyWith<_$_TweetUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
