// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'uploaded_media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadedMediaData _$$_UploadedMediaDataFromJson(Map json) => $checkedCreate(
      r'_$_UploadedMediaData',
      json,
      ($checkedConvert) {
        final val = _$_UploadedMediaData(
          mediaId:
              $checkedConvert('_media_id_string', (v) => v as String? ?? ''),
          id: $checkedConvert('media_id_string', (v) => v as String),
          expiresAt:
              $checkedConvert('expires_at', (v) => DateTime.parse(v as String)),
          language: $checkedConvert('language',
              (v) => $enumDecodeNullable(_$TweetLanguageEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'mediaId': '_media_id_string',
        'id': 'media_id_string',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$$_UploadedMediaDataToJson(
        _$_UploadedMediaData instance) =>
    <String, dynamic>{
      '_media_id_string': instance.mediaId,
      'media_id_string': instance.id,
      'expires_at': instance.expiresAt.toIso8601String(),
      'language': _$TweetLanguageEnumMap[instance.language],
    };

const _$TweetLanguageEnumMap = {
  TweetLanguage.amharic: 'am',
  TweetLanguage.german: 'de',
  TweetLanguage.malayalam: 'ml',
  TweetLanguage.slovak: 'sk',
  TweetLanguage.arabic: 'ar',
  TweetLanguage.greek: 'el',
  TweetLanguage.maldivian: 'dv',
  TweetLanguage.slovenian: 'sl',
  TweetLanguage.armenian: 'hy',
  TweetLanguage.gujarati: 'gu',
  TweetLanguage.marathi: 'mr',
  TweetLanguage.soraniKurdish: 'ckb',
  TweetLanguage.basque: 'eu',
  TweetLanguage.haitianCreole: 'ht',
  TweetLanguage.nepali: 'ne',
  TweetLanguage.spanish: 'es',
  TweetLanguage.bengali: 'bn',
  TweetLanguage.hebrew: 'iw',
  TweetLanguage.norwegian: 'no',
  TweetLanguage.swedish: 'sv',
  TweetLanguage.bosnian: 'bs',
  TweetLanguage.hindi: 'hi',
  TweetLanguage.oriya: 'or',
  TweetLanguage.tagalog: 'tl',
  TweetLanguage.bulgarian: 'bg',
  TweetLanguage.latinizedHindi: 'hi-Latn',
  TweetLanguage.panjabi: 'pa',
  TweetLanguage.tamil: 'ta',
  TweetLanguage.burmese: 'my',
  TweetLanguage.hungarian: 'hu',
  TweetLanguage.pashto: 'ps',
  TweetLanguage.telugu: 'te',
  TweetLanguage.croatian: 'hr',
  TweetLanguage.icelandic: 'is',
  TweetLanguage.persian: 'fa',
  TweetLanguage.thai: 'th',
  TweetLanguage.catalan: 'ca',
  TweetLanguage.indonesian: 'in',
  TweetLanguage.polish: 'pl',
  TweetLanguage.tibetan: 'bo',
  TweetLanguage.czech: 'cs',
  TweetLanguage.italian: 'it',
  TweetLanguage.portuguese: 'pt',
  TweetLanguage.chinese: 'zh',
  TweetLanguage.traditionalChinese: 'zh-TW',
  TweetLanguage.danish: 'da',
  TweetLanguage.japanese: 'ja',
  TweetLanguage.romanian: 'ro',
  TweetLanguage.turkish: 'tr',
  TweetLanguage.dutch: 'nl',
  TweetLanguage.kannada: 'kn',
  TweetLanguage.russian: 'ru',
  TweetLanguage.ukrainian: 'uk',
  TweetLanguage.english: 'en',
  TweetLanguage.khmer: 'km',
  TweetLanguage.serbian: 'sr',
  TweetLanguage.urdu: 'ur',
  TweetLanguage.estonian: 'et',
  TweetLanguage.korean: 'ko',
  TweetLanguage.simplifiedChinese: 'zh-CN',
  TweetLanguage.uyghur: 'ug',
  TweetLanguage.finnish: 'fi',
  TweetLanguage.lao: 'lo',
  TweetLanguage.sindhi: 'sd',
  TweetLanguage.vietnamese: 'vi',
  TweetLanguage.french: 'fr',
  TweetLanguage.latvian: 'lv',
  TweetLanguage.sinhala: 'si',
  TweetLanguage.welsh: 'cy',
  TweetLanguage.georgian: 'ka',
  TweetLanguage.lithuanian: 'lt',
  TweetLanguage.undefined: 'und',
};
