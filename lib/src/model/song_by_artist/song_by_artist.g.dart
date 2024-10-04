// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_by_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponeSongArtist _$ResponeSongArtistFromJson(Map<String, dynamic> json) =>
    ResponeSongArtist(
      data: (json['data'] as List<dynamic>)
          .map((e) => SongByArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      next: json['next'] as String,
    );

Map<String, dynamic> _$ResponeSongArtistToJson(ResponeSongArtist instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'next': instance.next,
    };

SongByArtist _$SongByArtistFromJson(Map<String, dynamic> json) => SongByArtist(
      id: (json['id'] as num).toInt(),
      readable: json['readable'] as bool,
      title: json['title'] as String,
      titleShort: json['title_short'] as String,
      titleVersion: json['title_version'] as String?,
      link: json['link'] as String,
      duration: (json['duration'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      explicitLyrics: json['explicit_lyrics'] as bool,
      explicitContentLyrics: (json['explicit_content_lyrics'] as num).toInt(),
      explicitContentCover: (json['explicit_content_cover'] as num).toInt(),
      preview: json['preview'] as String,
      contributors: (json['contributors'] as List<dynamic>)
          .map((e) => Contributor.fromJson(e as Map<String, dynamic>))
          .toList(),
      md5Image: json['md5_image'] as String,
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$SongByArtistToJson(SongByArtist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'readable': instance.readable,
      'title': instance.title,
      'title_short': instance.titleShort,
      'title_version': instance.titleVersion,
      'link': instance.link,
      'duration': instance.duration,
      'rank': instance.rank,
      'explicit_lyrics': instance.explicitLyrics,
      'explicit_content_lyrics': instance.explicitContentLyrics,
      'explicit_content_cover': instance.explicitContentCover,
      'preview': instance.preview,
      'contributors': instance.contributors,
      'md5_image': instance.md5Image,
      'artist': instance.artist,
      'album': instance.album,
      'type': instance.type,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      cover: json['cover'] as String,
      coverSmall: json['cover_small'] as String,
      coverMedium: json['cover_medium'] as String,
      coverBig: json['cover_big'] as String,
      coverXl: json['cover_xl'] as String,
      md5Image: json['md5_image'] as String,
      tracklist: json['tracklist'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'cover_small': instance.coverSmall,
      'cover_medium': instance.coverMedium,
      'cover_big': instance.coverBig,
      'cover_xl': instance.coverXl,
      'md5_image': instance.md5Image,
      'tracklist': instance.tracklist,
      'type': instance.type,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      tracklist: json['tracklist'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tracklist': instance.tracklist,
      'type': instance.type,
    };

Contributor _$ContributorFromJson(Map<String, dynamic> json) => Contributor(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      link: json['link'] as String,
      share: json['share'] as String,
      picture: json['picture'] as String,
      pictureSmall: json['picture_small'] as String,
      pictureMedium: json['picture_medium'] as String,
      pictureBig: json['picture_big'] as String,
      pictureXl: json['picture_xl'] as String,
      radio: json['radio'] as bool,
      tracklist: json['tracklist'] as String,
      type: json['type'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$ContributorToJson(Contributor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'share': instance.share,
      'picture': instance.picture,
      'picture_small': instance.pictureSmall,
      'picture_medium': instance.pictureMedium,
      'picture_big': instance.pictureBig,
      'picture_xl': instance.pictureXl,
      'radio': instance.radio,
      'tracklist': instance.tracklist,
      'type': instance.type,
      'role': instance.role,
    };
