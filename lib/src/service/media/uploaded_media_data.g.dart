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
          language: $checkedConvert(
              'language', (v) => $enumDecodeNullable(_$LanguageEnumMap, v)),
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
      'language': _$LanguageEnumMap[instance.language],
    };

const _$LanguageEnumMap = {
  Language.amharic: 'am',
  Language.german: 'de',
  Language.malayalam: 'ml',
  Language.slovak: 'sk',
  Language.arabic: 'ar',
  Language.greek: 'el',
  Language.maldivian: 'dv',
  Language.slovenian: 'sl',
  Language.armenian: 'hy',
  Language.gujarati: 'gu',
  Language.marathi: 'mr',
  Language.soraniKurdish: 'ckb',
  Language.basque: 'eu',
  Language.haitianCreole: 'ht',
  Language.nepali: 'ne',
  Language.spanish: 'es',
  Language.bengali: 'bn',
  Language.hebrew: 'iw',
  Language.norwegian: 'no',
  Language.swedish: 'sv',
  Language.bosnian: 'bs',
  Language.hindi: 'hi',
  Language.oriya: 'or',
  Language.tagalog: 'tl',
  Language.bulgarian: 'bg',
  Language.latinizedHindi: 'hi-Latn',
  Language.panjabi: 'pa',
  Language.tamil: 'ta',
  Language.burmese: 'my',
  Language.hungarian: 'hu',
  Language.pashto: 'ps',
  Language.telugu: 'te',
  Language.croatian: 'hr',
  Language.icelandic: 'is',
  Language.persian: 'fa',
  Language.thai: 'th',
  Language.catalan: 'ca',
  Language.indonesian: 'in',
  Language.polish: 'pl',
  Language.tibetan: 'bo',
  Language.czech: 'cs',
  Language.italian: 'it',
  Language.portuguese: 'pt',
  Language.chinese: 'zh',
  Language.traditionalChinese: 'zh-TW',
  Language.danish: 'da',
  Language.japanese: 'ja',
  Language.romanian: 'ro',
  Language.turkish: 'tr',
  Language.dutch: 'nl',
  Language.kannada: 'kn',
  Language.russian: 'ru',
  Language.ukrainian: 'uk',
  Language.english: 'en',
  Language.khmer: 'km',
  Language.serbian: 'sr',
  Language.urdu: 'ur',
  Language.estonian: 'et',
  Language.korean: 'ko',
  Language.simplifiedChinese: 'zh-CN',
  Language.uyghur: 'ug',
  Language.finnish: 'fi',
  Language.lao: 'lo',
  Language.sindhi: 'sd',
  Language.vietnamese: 'vi',
  Language.french: 'fr',
  Language.latvian: 'lv',
  Language.sinhala: 'si',
  Language.welsh: 'cy',
  Language.georgian: 'ka',
  Language.lithuanian: 'lt',
  Language.undefined: 'und',
};
