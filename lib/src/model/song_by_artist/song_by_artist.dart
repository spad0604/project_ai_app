import 'package:json_annotation/json_annotation.dart';
part 'song_by_artist.g.dart';

@JsonSerializable()
class ResponeSongArtist {
  @JsonKey(name: "data")
  final List<SongByArtist> data;
  @JsonKey(name: "total")
  final int total;
  @JsonKey(name: "next")
  final String next;

  ResponeSongArtist({
    required this.data,
    required this.total,
    required this.next,
  });

  ResponeSongArtist copyWith({
    List<SongByArtist>? data,
    int? total,
    String? next,
  }) =>
      ResponeSongArtist(
        data: data ?? this.data,
        total: total ?? this.total,
        next: next ?? this.next,
      );

  factory ResponeSongArtist.fromJson(Map<String, dynamic> json) => _$ResponeSongArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ResponeSongArtistToJson(this);
}

@JsonSerializable()
class SongByArtist {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "readable")
  final bool readable;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "title_short")
  final String titleShort;
  @JsonKey(name: "title_version")
  final String? titleVersion; // Thay đổi thành String?
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "duration")
  final int duration;
  @JsonKey(name: "rank")
  final int rank;
  @JsonKey(name: "explicit_lyrics")
  final bool explicitLyrics;
  @JsonKey(name: "explicit_content_lyrics")
  final int explicitContentLyrics;
  @JsonKey(name: "explicit_content_cover")
  final int explicitContentCover;
  @JsonKey(name: "preview")
  final String preview;
  @JsonKey(name: "contributors")
  final List<Contributor> contributors;
  @JsonKey(name: "md5_image")
  final String md5Image;
  @JsonKey(name: "artist")
  final Artist artist;
  @JsonKey(name: "album")
  final Album album;
  @JsonKey(name: "type")
  final String type;

  SongByArtist({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    this.titleVersion, // Thay đổi đây
    required this.link,
    required this.duration,
    required this.rank,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.contributors,
    required this.md5Image,
    required this.artist,
    required this.album,
    required this.type,
  });

  factory SongByArtist.fromJson(Map<String, dynamic> json) => SongByArtist(
    id: json['id'] as int,
    readable: json['readable'] as bool,
    title: json['title'] as String,
    titleShort: json['title_short'] as String,
    titleVersion: json['title_version'] as String?, // Có thể là null
    link: json['link'] as String,
    duration: json['duration'] as int,
    rank: json['rank'] as int,
    explicitLyrics: json['explicit_lyrics'] as bool,
    explicitContentLyrics: json['explicit_content_lyrics'] as int,
    explicitContentCover: json['explicit_content_cover'] as int,
    preview: json['preview'] as String,
    contributors: (json['contributors'] as List)
        .map((item) => Contributor.fromJson(item))
        .toList(),
    md5Image: json['md5_image'] as String,
    artist: Artist.fromJson(json['artist']),
    album: Album.fromJson(json['album']),
    type: json['type'] as String,
  );

  Map<String, dynamic> toJson() => _$SongByArtistToJson(this);
}

@JsonSerializable()
class Album {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
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
  @JsonKey(name: "tracklist")
  final String tracklist;
  @JsonKey(name: "type")
  final String type;

  Album({
    required this.id,
    required this.title,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.tracklist,
    required this.type,
  });

  Album copyWith({
    int? id,
    String? title,
    String? cover,
    String? coverSmall,
    String? coverMedium,
    String? coverBig,
    String? coverXl,
    String? md5Image,
    String? tracklist,
    String? type,
  }) =>
      Album(
        id: id ?? this.id,
        title: title ?? this.title,
        cover: cover ?? this.cover,
        coverSmall: coverSmall ?? this.coverSmall,
        coverMedium: coverMedium ?? this.coverMedium,
        coverBig: coverBig ?? this.coverBig,
        coverXl: coverXl ?? this.coverXl,
        md5Image: md5Image ?? this.md5Image,
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
  @JsonKey(name: "tracklist")
  final String tracklist;
  @JsonKey(name: "type")
  final String type;

  Artist({
    required this.id,
    required this.name,
    required this.tracklist,
    required this.type,
  });

  Artist copyWith({
    int? id,
    String? name,
    String? tracklist,
    String? type,
  }) =>
      Artist(
        id: id ?? this.id,
        name: name ?? this.name,
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
