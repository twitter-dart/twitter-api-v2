// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_withheld.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetWithheld _$$_TweetWithheldFromJson(Map json) => $checkedCreate(
      r'_$_TweetWithheld',
      json,
      ($checkedConvert) {
        final val = _$_TweetWithheld(
          dueToCopyright: $checkedConvert('copyright', (v) => v as bool),
          countries: $checkedConvert(
              'country_codes',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$CountryEnumMap, e))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'dueToCopyright': 'copyright',
        'countries': 'country_codes'
      },
    );

Map<String, dynamic> _$$_TweetWithheldToJson(_$_TweetWithheld instance) =>
    <String, dynamic>{
      'copyright': instance.dueToCopyright,
      'country_codes':
          instance.countries.map((e) => _$CountryEnumMap[e]!).toList(),
    };

const _$CountryEnumMap = {
  Country.afghanistan: 'AF',
  Country.alandIslands: 'AX',
  Country.albania: 'AL',
  Country.algeria: 'DZ',
  Country.americanSamoa: 'AS',
  Country.andorra: 'AD',
  Country.angola: 'AO',
  Country.anguilla: 'AI',
  Country.antarctica: 'AQ',
  Country.antiguaAndBarbuda: 'AG',
  Country.argentina: 'AR',
  Country.armenia: 'AM',
  Country.aruba: 'AW',
  Country.australia: 'AU',
  Country.austria: 'AT',
  Country.azerbaijan: 'AZ',
  Country.bahamas: 'BS',
  Country.bahrain: 'BH',
  Country.bangladesh: 'BD',
  Country.barbados: 'BB',
  Country.belarus: 'BY',
  Country.belgium: 'BE',
  Country.belize: 'BZ',
  Country.benin: 'BJ',
  Country.bermuda: 'BM',
  Country.bhutan: 'BT',
  Country.bolivia: 'BO',
  Country.bonaire: 'BQ',
  Country.bosniaAndHerzegovina: 'BA',
  Country.botswana: 'BW',
  Country.bouvetIsland: 'BV',
  Country.brazil: 'BR',
  Country.britishIndianOceanTerritory: 'IO',
  Country.bruneiDarussalam: 'BN',
  Country.bulgaria: 'BG',
  Country.burkinaFaso: 'BF',
  Country.burundi: 'BI',
  Country.cambodia: 'KH',
  Country.cameroon: 'CM',
  Country.canada: 'CA',
  Country.capeVerde: 'CV',
  Country.caymanIslands: 'KY',
  Country.centralAfricanRepublic: 'CF',
  Country.chad: 'TD',
  Country.chile: 'CL',
  Country.china: 'CN',
  Country.christmasIsland: 'CX',
  Country.cocosIslands: 'CC',
  Country.colombia: 'CO',
  Country.comoros: 'KM',
  Country.congo: 'CD',
  Country.cookIslands: 'CK',
  Country.costaRica: 'CR',
  Country.ivoryCoast: 'CI',
  Country.croatia: 'HR',
  Country.cuba: 'CU',
  Country.curacao: 'CW',
  Country.cyprus: 'CY',
  Country.czechRepublic: 'CZ',
  Country.denmark: 'DK',
  Country.djibouti: 'DJ',
  Country.dominica: 'DM',
  Country.dominicanRepublic: 'DO',
  Country.ecuador: 'EC',
  Country.egypt: 'EG',
  Country.elSalvador: 'SV',
  Country.equatorialGuinea: 'GQ',
  Country.eritrea: 'ER',
  Country.estonia: 'EE',
  Country.ethiopia: 'ET',
  Country.falklandIslands: 'FK',
  Country.faroeIslands: 'FO',
  Country.fiji: 'FJ',
  Country.finland: 'FI',
  Country.france: 'FR',
  Country.frenchGuiana: 'GF',
  Country.frenchPolynesia: 'PF',
  Country.frenchSouthernTerritories: 'TF',
  Country.gabon: 'GA',
  Country.gambia: 'GM',
  Country.georgia: 'GE',
  Country.germany: 'DE',
  Country.ghana: 'GH',
  Country.gibraltar: 'GI',
  Country.greece: 'GR',
  Country.greenland: 'GL',
  Country.grenada: 'GD',
  Country.guadeloupe: 'GP',
  Country.guam: 'GU',
  Country.guatemala: 'GT',
  Country.guernsey: 'GG',
  Country.guinea: 'GN',
  Country.guineaBissau: 'GW',
  Country.guyana: 'GY',
  Country.haiti: 'HT',
  Country.heardIslandAndMcDonaldIslands: 'HM',
  Country.holySee: 'VA',
  Country.honduras: 'HN',
  Country.hongKong: 'HK',
  Country.hungary: 'HU',
  Country.iceland: 'IS',
  Country.india: 'IN',
  Country.indonesia: 'ID',
  Country.iran: 'IR',
  Country.iraq: 'IQ',
  Country.ireland: 'IE',
  Country.isleOfMan: 'IM',
  Country.israel: 'IL',
  Country.italy: 'IT',
  Country.jamaica: 'JM',
  Country.japan: 'JP',
  Country.jersey: 'JE',
  Country.jordan: 'JO',
  Country.kazakhstan: 'KZ',
  Country.kenya: 'KE',
  Country.kiribati: 'KI',
  Country.northKorea: 'KP',
  Country.korea: 'KR',
  Country.kuwait: 'KW',
  Country.kyrgyzstan: 'KG',
  Country.laoPeoplesDemocraticRepublic: 'LA',
  Country.latvia: 'LV',
  Country.lebanon: 'LB',
  Country.lesotho: 'LS',
  Country.liberia: 'LR',
  Country.libya: 'LY',
  Country.liechtenstein: 'LI',
  Country.lithuania: 'LT',
  Country.luxembourg: 'LU',
  Country.macao: 'MO',
  Country.macedonia: 'MK',
  Country.madagascar: 'MG',
  Country.malawi: 'MW',
  Country.malaysia: 'MY',
  Country.maldives: 'MV',
  Country.mali: 'ML',
  Country.malta: 'MT',
  Country.marshallIslands: 'MH',
  Country.martinique: 'MQ',
  Country.mauritania: 'MR',
  Country.mauritius: 'MU',
  Country.mayotte: 'YT',
  Country.mexico: 'MX',
  Country.micronesia: 'FM',
  Country.moldova: 'MD',
  Country.monaco: 'MC',
  Country.mongolia: 'MN',
  Country.montenegro: 'ME',
  Country.montserrat: 'MS',
  Country.morocco: 'MA',
  Country.mozambique: 'MZ',
  Country.myanmar: 'MM',
  Country.namibia: 'NA',
  Country.nauru: 'NR',
  Country.nepal: 'NP',
  Country.netherlands: 'NL',
  Country.newCaledonia: 'NC',
  Country.newZealand: 'NZ',
  Country.nicaragua: 'NI',
  Country.niger: 'NE',
  Country.nigeria: 'NG',
  Country.niue: 'NU',
  Country.norfolkIsland: 'NF',
  Country.northernMarianaIslands: 'MP',
  Country.norway: 'NO',
  Country.oman: 'OM',
  Country.pakistan: 'PK',
  Country.palau: 'PW',
  Country.palestine: 'PS',
  Country.panama: 'PA',
  Country.papuaNewGuinea: 'PG',
  Country.paraguay: 'PY',
  Country.peru: 'PE',
  Country.philippines: 'PH',
  Country.pitcairn: 'PN',
  Country.poland: 'PL',
  Country.portugal: 'PT',
  Country.puertoRico: 'PR',
  Country.qatar: 'QA',
  Country.reunion: 'RE',
  Country.romania: 'RO',
  Country.russianFederation: 'RU',
  Country.rwanda: 'RW',
  Country.saintBarthelemy: 'BL',
  Country.saintHelena: 'SH',
  Country.saintKittsAndNevis: 'KN',
  Country.saintLucia: 'LC',
  Country.saintMartin: 'MF',
  Country.saintPierreAndMiquelon: 'PM',
  Country.saintVincentAndTheGrenadines: 'VC',
  Country.samoa: 'WS',
  Country.sanMarino: 'SM',
  Country.saoTomeAndPrincipe: 'ST',
  Country.saudiArabia: 'SA',
  Country.senegal: 'SN',
  Country.serbia: 'RS',
  Country.seychelles: 'SC',
  Country.sierraLeone: 'SL',
  Country.singapore: 'SG',
  Country.sintMaarten: 'SX',
  Country.slovakia: 'SK',
  Country.slovenia: 'SI',
  Country.solomonIslands: 'SB',
  Country.somalia: 'SO',
  Country.southAfrica: 'ZA',
  Country.southGeorgiaAndTheSouthSandwichIslands: 'GS',
  Country.southSudan: 'SS',
  Country.spain: 'ES',
  Country.sriLanka: 'LK',
  Country.sudan: 'SD',
  Country.suriname: 'SR',
  Country.svalbardAndJanMayen: 'SJ',
  Country.swaziland: 'SZ',
  Country.sweden: 'SE',
  Country.switzerland: 'CH',
  Country.syrianArabRepublic: 'SY',
  Country.taiwan: 'TW',
  Country.tajikistan: 'TJ',
  Country.tanzania: 'TZ',
  Country.thailand: 'TH',
  Country.timorLeste: 'TL',
  Country.togo: 'TG',
  Country.tokelau: 'TK',
  Country.tonga: 'TO',
  Country.trinidadAndTobago: 'TT',
  Country.tunisia: 'TN',
  Country.turkey: 'TR',
  Country.turkmenistan: 'TM',
  Country.turksAndCaicosIslands: 'TC',
  Country.tuvalu: 'TV',
  Country.uganda: 'UG',
  Country.ukraine: 'UA',
  Country.unitedArabEmirates: 'AE',
  Country.unitedKingdom: 'GB',
  Country.unitedStates: 'US',
  Country.unitedStatesMinorOutlyingIslands: 'UM',
  Country.uruguay: 'UY',
  Country.uzbekistan: 'UZ',
  Country.vanuatu: 'VU',
  Country.venezuela: 'VE',
  Country.vietnam: 'VN',
  Country.virginIslandsBritish: 'VG',
  Country.virginIslandsUS: 'VI',
  Country.wallisAndFutuna: 'WF',
  Country.westernSahara: 'EH',
  Country.yemen: 'YE',
  Country.zambia: 'ZM',
  Country.zimbabwe: 'ZW',
  Country.allCountries: 'XX',
  Country.dmcaRequest: 'XY',
};
