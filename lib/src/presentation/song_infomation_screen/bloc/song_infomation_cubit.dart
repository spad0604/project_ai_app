import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shazam_app/src/model/song_by_artist/song_by_artist.dart';
import 'package:shazam_app/src/network/song_by_artist_service/song_by_artist_service.dart';

part 'song_infomation_state.dart';

part 'song_infomation_cubit.freezed.dart';

@singleton
class SongInfomationCubit extends Cubit<SongInfomationState> {
  SongInfomationCubit() : super(const SongInfomationState.initial());

  void toggleMinimize() {
    emit(state.copyWith(isMinimized: !state.isMinimized));
  }

  void setScrollControler(double value) {
    emit(state.copyWith(scrollPosition: value));
  }

  void playMusic(AudioPlayer audioPlayer, String urlAudio) async {
    if (state.isPlayingMusic) {
      await audioPlayer.pause();
    } else {
      if (audioPlayer.state == PlayerState.paused) {
        await audioPlayer.resume();
      } else {
        final url = urlAudio;
        await audioPlayer.play(UrlSource(url));
      }
    }
    emit(state.copyWith(isPlayingMusic: !state.isPlayingMusic));
  }

  Future<void> getMusicByArtist(String artist) async {
    final songByArtistService = SongByArtistService();
    try {
      List<SongByArtist>? list =
          await songByArtistService.getSongByArtist(artist);
      if (list != null) {
        emit(state.copyWith(listSongByArtist: list));
      } else {
        emit(state.copyWith(listSongByArtist: []));
      }
    } catch (e) {
      print('Error fetching music by artist: $e');
    }
  }

  void setPreviewUrl(String? url) {
    if(url != null) {
      emit(state.copyWith(previewUrl: url));
    }
  }
}
