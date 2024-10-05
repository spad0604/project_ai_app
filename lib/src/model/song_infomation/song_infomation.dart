import 'package:json_annotation/json_annotation.dart';
part 'song_infomation.g.dart';

@JsonSerializable()
class DeezerSongModel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "readable")
  final bool readable;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "title_short")
  final String titleShort;
  @JsonKey(name: "title_version")
  final String titleVersion;
  @JsonKey(name: "isrc")
  final String isrc;
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "share")
  final String share;
  @JsonKey(name: "duration")
  final int duration;
  @JsonKey(name: "track_position")
  final int trackPosition;
  @JsonKey(name: "disk_number")
  final int diskNumber;
  @JsonKey(name: "rank")
  final int rank;
  @JsonKey(name: "release_date")
  final String releaseDate;
  @JsonKey(name: "explicit_lyrics")
  final bool explicitLyrics;
  @JsonKey(name: "explicit_content_lyrics")
  final int explicitContentLyrics;
  @JsonKey(name: "explicit_content_cover")
  final int explicitContentCover;
  @JsonKey(name: "preview")
  final String preview;
  @JsonKey(name: "bpm")
  final double bpm;
  @JsonKey(name: "gain")
  final double gain;
  @JsonKey(name: "available_countries")
  final List<String> availableCountries;
  @JsonKey(name: "contributors")
  final List<Contributor> contributors;
  @JsonKey(name: "md5_image")
  final String md5Image;
  @JsonKey(name: "track_token")
  final String trackToken;
  @JsonKey(name: "artist")
  final Artist artist;
  @JsonKey(name: "album")
  final Album album;
  @JsonKey(name: "type")
  final String type;

  DeezerSongModel({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    required this.titleVersion,
    required this.isrc,
    required this.link,
    required this.share,
    required this.duration,
    required this.trackPosition,
    required this.diskNumber,
    required this.rank,
    required this.releaseDate,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.bpm,
    required this.gain,
    required this.availableCountries,
    required this.contributors,
    required this.md5Image,
    required this.trackToken,
    required this.artist,
    required this.album,
    required this.type,
  });

  DeezerSongModel copyWith({
    int? id,
    bool? readable,
    String? title,
    String? titleShort,
    String? titleVersion,
    String? isrc,
    String? link,
    String? share,
    int? duration,
    int? trackPosition,
    int? diskNumber,
    int? rank,
    String? releaseDate,
    bool? explicitLyrics,
    int? explicitContentLyrics,
    int? explicitContentCover,
    String? preview,
    double? bpm,
    double? gain,
    List<String>? availableCountries,
    List<Contributor>? contributors,
    String? md5Image,
    String? trackToken,
    Artist? artist,
    Album? album,
    String? type,
  }) =>
      DeezerSongModel(
        id: id ?? this.id,
        readable: readable ?? this.readable,
        title: title ?? this.title,
        titleShort: titleShort ?? this.titleShort,
        titleVersion: titleVersion ?? this.titleVersion,
        isrc: isrc ?? this.isrc,
        link: link ?? this.link,
        share: share ?? this.share,
        duration: duration ?? this.duration,
        trackPosition: trackPosition ?? this.trackPosition,
        diskNumber: diskNumber ?? this.diskNumber,
        rank: rank ?? this.rank,
        releaseDate: releaseDate ?? this.releaseDate,
        explicitLyrics: explicitLyrics ?? this.explicitLyrics,
        explicitContentLyrics: explicitContentLyrics ?? this.explicitContentLyrics,
        explicitContentCover: explicitContentCover ?? this.explicitContentCover,
        preview: preview ?? this.preview,
        bpm: bpm ?? this.bpm,
        gain: gain ?? this.gain,
        availableCountries: availableCountries ?? this.availableCountries,
        contributors: contributors ?? this.contributors,
        md5Image: md5Image ?? this.md5Image,
        trackToken: trackToken ?? this.trackToken,
        artist: artist ?? this.artist,
        album: album ?? this.album,
        type: type ?? this.type,
      );

  factory DeezerSongModel.fromJson(Map<String, dynamic> json) => _$DeezerSongModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeezerSongModelToJson(this);
}

@JsonSerializable()
class Album {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "cover")
  final String cover;
  @JsonKey(name: "cover_small")
  final String coverSmall;
  @JsonKey(name: "cover_medium")
  final String coverMedium;
  @JsonKey(name: "cover_big")
  final String coverBig;
  @JsonKey(name: "cover_xl")
  final String coverXl;
  @JsonKey(name: "md5_image")
  final String md5Image;
  @JsonKey(name: "release_date")
  final String releaseDate;
  @JsonKey(name: "tracklist")
  final String tracklist;
  @JsonKey(name: "type")
  final String type;

  Album({
    required this.id,
    required this.title,
    required this.link,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.releaseDate,
    required this.tracklist,
    required this.type,
  });

  Album copyWith({
    int? id,
    String? title,
    String? link,
    String? cover,
    String? coverSmall,
    String? coverMedium,
    String? coverBig,
    String? coverXl,
    String? md5Image,
    String? releaseDate,
    String? tracklist,
    String? type,
  }) =>
      Album(
        id: id ?? this.id,
        title: title ?? this.title,
        link: link ?? this.link,
        cover: cover ?? this.cover,
        coverSmall: coverSmall ?? this.coverSmall,
        coverMedium: coverMedium ?? this.coverMedium,
        coverBig: coverBig ?? this.coverBig,
        coverXl: coverXl ?? this.coverXl,
        md5Image: md5Image ?? this.md5Image,
        releaseDate: releaseDate ?? this.releaseDate,
        tracklist: tracklist ?? this.tracklist,
        type: type ?? this.type,
      );

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable()
class Artist {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "share")
  final String share;
  @JsonKey(name: "picture")
  final String picture;
  @JsonKey(name: "picture_small")
  final String pictureSmall;
  @JsonKey(name: "picture_medium")
  final String pictureMedium;
  @JsonKey(name: "picture_big")
  final String pictureBig;
  @JsonKey(name: "picture_xl")
  final String pictureXl;
  @JsonKey(name: "radio")
  final bool radio;
  @JsonKey(name: "tracklist")
  final String tracklist;
  @JsonKey(name: "type")
  final String type;

  Artist({
    required this.id,
    required this.name,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.radio,
    required this.tracklist,
    required this.type,
  });

  Artist copyWith({
    int? id,
    String? name,
    String? link,
    String? share,
    String? picture,
    String? pictureSmall,
    String? pictureMedium,
    String? pictureBig,
    String? pictureXl,
    bool? radio,
    String? tracklist,
    String? type,
  }) =>
      Artist(
        id: id ?? this.id,
        name: name ?? this.name,
        link: link ?? this.link,
        share: share ?? this.share,
        picture: picture ?? this.picture,
        pictureSmall: pictureSmall ?? this.pictureSmall,
        pictureMedium: pictureMedium ?? this.pictureMedium,
        pictureBig: pictureBig ?? this.pictureBig,
        pictureXl: pictureXl ?? this.pictureXl,
        radio: radio ?? this.radio,
        tracklist: tracklist ?? this.tracklist,
        type: type ?? this.type,
      );

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class Contributor {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "share")
  final String share;
  @JsonKey(name: "picture")
  final String picture;
  @JsonKey(name: "picture_small")
  final String pictureSmall;
  @JsonKey(name: "picture_medium")
  final String pictureMedium;
  @JsonKey(name: "picture_big")
  final String pictureBig;
  @JsonKey(name: "picture_xl")
  final String pictureXl;
  @JsonKey(name: "radio")
  final bool radio;
  @JsonKey(name: "tracklist")
  final String tracklist;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "role")
  final String role;

  Contributor({
    required this.id,
    required this.name,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.radio,
    required this.tracklist,
    required this.type,
    required this.role,
  });

  Contributor copyWith({
    int? id,
    String? name,
    String? link,
    String? share,
    String? picture,
    String? pictureSmall,
    String? pictureMedium,
    String? pictureBig,
    String? pictureXl,
    bool? radio,
    String? tracklist,
    String? type,
    String? role,
  }) =>
      Contributor(
        id: id ?? this.id,
        name: name ?? this.name,
        link: link ?? this.link,
        share: share ?? this.share,
        picture: picture ?? this.picture,
        pictureSmall: pictureSmall ?? this.pictureSmall,
        pictureMedium: pictureMedium ?? this.pictureMedium,
        pictureBig: pictureBig ?? this.pictureBig,
        pictureXl: pictureXl ?? this.pictureXl,
        radio: radio ?? this.radio,
        tracklist: tracklist ?? this.tracklist,
        type: type ?? this.type,
        role: role ?? this.role,
      );

  factory Contributor.fromJson(Map<String, dynamic> json) => _$ContributorFromJson(json);

  Map<String, dynamic> toJson() => _$ContributorToJson(this);
}
