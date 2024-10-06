// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      resultCount: (json['resultCount'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Music.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

Music _$ResultFromJson(Map<String, dynamic> json) => Music(
      wrapperType:
          $enumDecodeNullable(_$WrapperTypeEnumMap, json['wrapperType']),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      artistId: (json['artistId'] as num?)?.toInt(),
      collectionId: (json['collectionId'] as num?)?.toInt(),
      trackId: (json['trackId'] as num?)?.toInt(),
      artistName: json['artistName'] as String?,
      collectionName: json['collectionName'] as String?,
      trackName: json['trackName'] as String?,
      collectionCensoredName: json['collectionCensoredName'] as String?,
      trackCensoredName: json['trackCensoredName'] as String?,
      artistViewUrl: json['artistViewUrl'] as String?,
      collectionViewUrl: json['collectionViewUrl'] as String?,
      trackViewUrl: json['trackViewUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      artworkUrl30: json['artworkUrl30'] as String?,
      artworkUrl60: json['artworkUrl60'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      collectionPrice: (json['collectionPrice'] as num?)?.toDouble(),
      trackPrice: (json['trackPrice'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      collectionExplicitness: $enumDecodeNullable(
          _$ExplicitnessEnumMap, json['collectionExplicitness']),
      trackExplicitness:
          $enumDecodeNullable(_$ExplicitnessEnumMap, json['trackExplicitness']),
      discCount: (json['discCount'] as num?)?.toInt(),
      discNumber: (json['discNumber'] as num?)?.toInt(),
      trackCount: (json['trackCount'] as num?)?.toInt(),
      trackNumber: (json['trackNumber'] as num?)?.toInt(),
      trackTimeMillis: (json['trackTimeMillis'] as num?)?.toInt(),
      country: $enumDecodeNullable(_$CountryEnumMap, json['country']),
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      primaryGenreName: json['primaryGenreName'] as String?,
      isStreamable: json['isStreamable'] as bool?,
      contentAdvisoryRating: json['contentAdvisoryRating'] as String?,
      collectionArtistId: (json['collectionArtistId'] as num?)?.toInt(),
      collectionArtistName: json['collectionArtistName'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Music instance) => <String, dynamic>{
      'wrapperType': _$WrapperTypeEnumMap[instance.wrapperType],
      'kind': _$KindEnumMap[instance.kind],
      'artistId': instance.artistId,
      'collectionId': instance.collectionId,
      'trackId': instance.trackId,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackName': instance.trackName,
      'collectionCensoredName': instance.collectionCensoredName,
      'trackCensoredName': instance.trackCensoredName,
      'artistViewUrl': instance.artistViewUrl,
      'collectionViewUrl': instance.collectionViewUrl,
      'trackViewUrl': instance.trackViewUrl,
      'previewUrl': instance.previewUrl,
      'artworkUrl30': instance.artworkUrl30,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl100': instance.artworkUrl100,
      'collectionPrice': instance.collectionPrice,
      'trackPrice': instance.trackPrice,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'collectionExplicitness':
          _$ExplicitnessEnumMap[instance.collectionExplicitness],
      'trackExplicitness': _$ExplicitnessEnumMap[instance.trackExplicitness],
      'discCount': instance.discCount,
      'discNumber': instance.discNumber,
      'trackCount': instance.trackCount,
      'trackNumber': instance.trackNumber,
      'trackTimeMillis': instance.trackTimeMillis,
      'country': _$CountryEnumMap[instance.country],
      'currency': _$CurrencyEnumMap[instance.currency],
      'primaryGenreName': instance.primaryGenreName,
      'isStreamable': instance.isStreamable,
      'contentAdvisoryRating': instance.contentAdvisoryRating,
      'collectionArtistId': instance.collectionArtistId,
      'collectionArtistName': instance.collectionArtistName,
    };

const _$WrapperTypeEnumMap = {
  WrapperType.TRACK: 'track',
};

const _$KindEnumMap = {
  Kind.SONG: 'song',
};

const _$ExplicitnessEnumMap = {
  Explicitness.CLEANED: 'cleaned',
  Explicitness.EXPLICIT: 'explicit',
  Explicitness.NOT_EXPLICIT: 'notExplicit',
};

const _$CountryEnumMap = {
  Country.USA: 'USA',
};

const _$CurrencyEnumMap = {
  Currency.USD: 'USD',
};
