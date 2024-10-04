import 'package:acr_cloud_sdk/acr_cloud_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shazam_app/src/model/song_infomation/song_infomation.dart';
import 'package:shazam_app/src/network/song_finder_service/song_service.dart';

part 'song_screen_state.dart';
part 'song_screen_cubit.freezed.dart';

@singleton
class SongScreenCubit extends Cubit<SongScreenState> {
  SongScreenCubit() : super(const SongScreenState.initial());

  final AcrCloudSdk acr = AcrCloudSdk();
  final songService = SongService();

  Future<void> initAcr() async {
    try {
      acr
      ..init(
          host: 'identify-ap-southeast-1.acrcloud.com',
          accessKey: 'e4e43645c9afc6f8e0acc279ca0fc5f7',
          accessSecret: '1CS5lx172ADGoiHIu7xJqokvlsKeQEF3Yb6OwQZM'
      )..songModelStream.listen(searchSong);
    } catch(e) {
      print(e.toString());
    }
  }

  Future<void> searchSong(SongModel song) async {
    final metaData = song.metadata;
    print(song.metadata?.toJson());
    if (metaData != null && metaData.music!.isNotEmpty) {
      String? trackId = metaData.music?[0].externalMetadata?.deezer?.track?.id;
      if (trackId != null) {
        try {
          DeezerSongModel? res = await songService.getTrack(trackId.toString());
          emit(state.copyWith(songModel: res));
          emit(state.copyWith(success: true));
        } catch (e) {
          print('Error occurred 1: $e');
          emit(state.copyWith(isRecognizing: false));
          emit(state.copyWith(success: false));
        }
      } else {
        print('Track ID is null');
        emit(state.copyWith(isRecognizing: false));
        emit(state.copyWith(success: false));
      }
    }
  }

  Future<void> startRecognizing() async {
    emit(state.copyWith(isRecognizing: true));
    emit(state.copyWith(success: true));
    try {
      await acr.start();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> stopRecognizing() async {
    emit(state.copyWith(isRecognizing: false));
    emit(state.copyWith(success: false));
    try {
      await acr.stop();
    } catch (e) {
      print(e.toString());
    }
  }

  void resetData() {
    emit(state.copyWith(songModel: null));
    emit(state.copyWith(success: false));
    emit(state.copyWith(isRecognizing: false));
  }
}
