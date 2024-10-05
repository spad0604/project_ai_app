part of 'song_infomation_cubit.dart';

@freezed
class SongInfomationState with _$SongInfomationState {
  const factory SongInfomationState.initial(
      {@Default(false) bool isMinimized,
      @Default(0.0) double? scrollPosition,
      @Default(true) bool isPlayingMusic,
      @Default([]) List<SongByArtist> listSongByArtist,
      String? previewUrl}) = _Initial;
}
