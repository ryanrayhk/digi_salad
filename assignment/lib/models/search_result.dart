import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
    @JsonKey(name: "resultCount")
    int? resultCount;
    @JsonKey(name: "results")
    List<Music>? results;

    SearchResult({
        this.resultCount,
        this.results,
    });

    factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);

    Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}

@JsonSerializable()
class Music {
    @JsonKey(name: "wrapperType")
    WrapperType? wrapperType;
    @JsonKey(name: "kind")
    Kind? kind;
    @JsonKey(name: "artistId")
    int? artistId;
    @JsonKey(name: "collectionId")
    int? collectionId;
    @JsonKey(name: "trackId")
    int? trackId;
    @JsonKey(name: "artistName")
    String? artistName;
    @JsonKey(name: "collectionName")
    String? collectionName;
    @JsonKey(name: "trackName")
    String? trackName;
    @JsonKey(name: "collectionCensoredName")
    String? collectionCensoredName;
    @JsonKey(name: "trackCensoredName")
    String? trackCensoredName;
    @JsonKey(name: "artistViewUrl")
    String? artistViewUrl;
    @JsonKey(name: "collectionViewUrl")
    String? collectionViewUrl;
    @JsonKey(name: "trackViewUrl")
    String? trackViewUrl;
    @JsonKey(name: "previewUrl")
    String? previewUrl;
    @JsonKey(name: "artworkUrl30")
    String? artworkUrl30;
    @JsonKey(name: "artworkUrl60")
    String? artworkUrl60;
    @JsonKey(name: "artworkUrl100")
    String? artworkUrl100;
    @JsonKey(name: "collectionPrice")
    double? collectionPrice;
    @JsonKey(name: "trackPrice")
    double? trackPrice;
    @JsonKey(name: "releaseDate")
    DateTime? releaseDate;
    @JsonKey(name: "collectionExplicitness")
    Explicitness? collectionExplicitness;
    @JsonKey(name: "trackExplicitness")
    Explicitness? trackExplicitness;
    @JsonKey(name: "discCount")
    int? discCount;
    @JsonKey(name: "discNumber")
    int? discNumber;
    @JsonKey(name: "trackCount")
    int? trackCount;
    @JsonKey(name: "trackNumber")
    int? trackNumber;
    @JsonKey(name: "trackTimeMillis")
    int? trackTimeMillis;
    @JsonKey(name: "country")
    Country? country;
    @JsonKey(name: "currency")
    Currency? currency;
    @JsonKey(name: "primaryGenreName")
    String? primaryGenreName;
    @JsonKey(name: "isStreamable")
    bool? isStreamable;
    @JsonKey(name: "contentAdvisoryRating")
    String? contentAdvisoryRating;
    @JsonKey(name: "collectionArtistId")
    int? collectionArtistId;
    @JsonKey(name: "collectionArtistName")
    String? collectionArtistName;

    Music({
        this.wrapperType,
        this.kind,
        this.artistId,
        this.collectionId,
        this.trackId,
        this.artistName,
        this.collectionName,
        this.trackName,
        this.collectionCensoredName,
        this.trackCensoredName,
        this.artistViewUrl,
        this.collectionViewUrl,
        this.trackViewUrl,
        this.previewUrl,
        this.artworkUrl30,
        this.artworkUrl60,
        this.artworkUrl100,
        this.collectionPrice,
        this.trackPrice,
        this.releaseDate,
        this.collectionExplicitness,
        this.trackExplicitness,
        this.discCount,
        this.discNumber,
        this.trackCount,
        this.trackNumber,
        this.trackTimeMillis,
        this.country,
        this.currency,
        this.primaryGenreName,
        this.isStreamable,
        this.contentAdvisoryRating,
        this.collectionArtistId,
        this.collectionArtistName,
    });

    factory Music.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

    Map<String, dynamic> toJson() => _$ResultToJson(this);
}

enum Explicitness {
    @JsonValue("cleaned")
    CLEANED,
    @JsonValue("explicit")
    EXPLICIT,
    @JsonValue("notExplicit")
    NOT_EXPLICIT
}

enum Country {
    @JsonValue("USA")
    USA
}

enum Currency {
    @JsonValue("USD")
    USD
}

enum Kind {
    @JsonValue("song")
    SONG
}

enum WrapperType {
    @JsonValue("track")
    TRACK
}
