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
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int? get durationMilliseconds => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  PrivateMediaMetrics? get privateMetrics => throw _privateConstructorUsedError;
  OrganicMediaMetrics? get organicMetrics => throw _privateConstructorUsedError;
  String? get previewImageUrl => throw _privateConstructorUsedError;
  PromotedMediaMetrics? get promotedMetrics =>
      throw _privateConstructorUsedError;
  PublicMediaMetrics? get publicMetrics => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  String? get altText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaDataCopyWith<MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDataCopyWith<$Res> {
  factory $MediaDataCopyWith(MediaData value, $Res Function(MediaData) then) =
      _$MediaDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'media_key') String key,
      MediaType type,
      String? url,
      @JsonKey(name: 'duration_ms') int? durationMilliseconds,
      int? height,
      PrivateMediaMetrics? privateMetrics,
      OrganicMediaMetrics? organicMetrics,
      String? previewImageUrl,
      PromotedMediaMetrics? promotedMetrics,
      PublicMediaMetrics? publicMetrics,
      int? width,
      String? altText});

  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics;
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics;
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics;
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics;
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
    Object? url = freezed,
    Object? durationMilliseconds = freezed,
    Object? height = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? previewImageUrl = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? width = freezed,
    Object? altText = freezed,
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
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateMediaMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicMediaMetrics?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedMediaMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMediaMetrics?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics {
    if (_value.privateMetrics == null) {
      return null;
    }

    return $PrivateMediaMetricsCopyWith<$Res>(_value.privateMetrics!, (value) {
      return _then(_value.copyWith(privateMetrics: value));
    });
  }

  @override
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics {
    if (_value.organicMetrics == null) {
      return null;
    }

    return $OrganicMediaMetricsCopyWith<$Res>(_value.organicMetrics!, (value) {
      return _then(_value.copyWith(organicMetrics: value));
    });
  }

  @override
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics {
    if (_value.promotedMetrics == null) {
      return null;
    }

    return $PromotedMediaMetricsCopyWith<$Res>(_value.promotedMetrics!,
        (value) {
      return _then(_value.copyWith(promotedMetrics: value));
    });
  }

  @override
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicMediaMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }
}

/// @nodoc
abstract class _$$_MediaDataCopyWith<$Res> implements $MediaDataCopyWith<$Res> {
  factory _$$_MediaDataCopyWith(
          _$_MediaData value, $Res Function(_$_MediaData) then) =
      __$$_MediaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'media_key') String key,
      MediaType type,
      String? url,
      @JsonKey(name: 'duration_ms') int? durationMilliseconds,
      int? height,
      PrivateMediaMetrics? privateMetrics,
      OrganicMediaMetrics? organicMetrics,
      String? previewImageUrl,
      PromotedMediaMetrics? promotedMetrics,
      PublicMediaMetrics? publicMetrics,
      int? width,
      String? altText});

  @override
  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics;
  @override
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics;
  @override
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics;
  @override
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics;
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
    Object? url = freezed,
    Object? durationMilliseconds = freezed,
    Object? height = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? previewImageUrl = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? width = freezed,
    Object? altText = freezed,
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
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateMediaMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicMediaMetrics?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedMediaMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMediaMetrics?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaData implements _MediaData {
  const _$_MediaData(
      {@JsonKey(name: 'media_key') required this.key,
      required this.type,
      this.url,
      @JsonKey(name: 'duration_ms') this.durationMilliseconds,
      this.height,
      this.privateMetrics,
      this.organicMetrics,
      this.previewImageUrl,
      this.promotedMetrics,
      this.publicMetrics,
      this.width,
      this.altText});

  factory _$_MediaData.fromJson(Map<String, dynamic> json) =>
      _$$_MediaDataFromJson(json);

  @override
  @JsonKey(name: 'media_key')
  final String key;
  @override
  final MediaType type;
  @override
  final String? url;
  @override
  @JsonKey(name: 'duration_ms')
  final int? durationMilliseconds;
  @override
  final int? height;
  @override
  final PrivateMediaMetrics? privateMetrics;
  @override
  final OrganicMediaMetrics? organicMetrics;
  @override
  final String? previewImageUrl;
  @override
  final PromotedMediaMetrics? promotedMetrics;
  @override
  final PublicMediaMetrics? publicMetrics;
  @override
  final int? width;
  @override
  final String? altText;

  @override
  String toString() {
    return 'MediaData(key: $key, type: $type, url: $url, durationMilliseconds: $durationMilliseconds, height: $height, privateMetrics: $privateMetrics, organicMetrics: $organicMetrics, previewImageUrl: $previewImageUrl, promotedMetrics: $promotedMetrics, publicMetrics: $publicMetrics, width: $width, altText: $altText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaData &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.durationMilliseconds, durationMilliseconds) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.privateMetrics, privateMetrics) &&
            const DeepCollectionEquality()
                .equals(other.organicMetrics, organicMetrics) &&
            const DeepCollectionEquality()
                .equals(other.previewImageUrl, previewImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.promotedMetrics, promotedMetrics) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.altText, altText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(durationMilliseconds),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(privateMetrics),
      const DeepCollectionEquality().hash(organicMetrics),
      const DeepCollectionEquality().hash(previewImageUrl),
      const DeepCollectionEquality().hash(promotedMetrics),
      const DeepCollectionEquality().hash(publicMetrics),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(altText));

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
      required final MediaType type,
      final String? url,
      @JsonKey(name: 'duration_ms') final int? durationMilliseconds,
      final int? height,
      final PrivateMediaMetrics? privateMetrics,
      final OrganicMediaMetrics? organicMetrics,
      final String? previewImageUrl,
      final PromotedMediaMetrics? promotedMetrics,
      final PublicMediaMetrics? publicMetrics,
      final int? width,
      final String? altText}) = _$_MediaData;

  factory _MediaData.fromJson(Map<String, dynamic> json) =
      _$_MediaData.fromJson;

  @override
  @JsonKey(name: 'media_key')
  String get key => throw _privateConstructorUsedError;
  @override
  MediaType get type => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'duration_ms')
  int? get durationMilliseconds => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  PrivateMediaMetrics? get privateMetrics => throw _privateConstructorUsedError;
  @override
  OrganicMediaMetrics? get organicMetrics => throw _privateConstructorUsedError;
  @override
  String? get previewImageUrl => throw _privateConstructorUsedError;
  @override
  PromotedMediaMetrics? get promotedMetrics =>
      throw _privateConstructorUsedError;
  @override
  PublicMediaMetrics? get publicMetrics => throw _privateConstructorUsedError;
  @override
  int? get width => throw _privateConstructorUsedError;
  @override
  String? get altText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}
