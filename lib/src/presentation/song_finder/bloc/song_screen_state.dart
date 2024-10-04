part of 'song_screen_cubit.dart';

@freezed
class SongScreenState with _$SongScreenState {
  const factory SongScreenState.initial({
      DeezerSongModel? songModel,
      @Default(false) bool isRecognizing,
      @Default(false) bool success}) =
      _Initial;
}
