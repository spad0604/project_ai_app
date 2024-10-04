import 'package:dio/dio.dart';
import 'package:shazam_app/src/model/song_infomation/song_infomation.dart';

class SongService {
  Dio? _dio;

  SongService() {
    BaseOptions options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 5000),
        connectTimeout: const Duration(milliseconds: 5000),
        baseUrl: 'https://api.deezer.com/track/');
    _dio = Dio(options);
  }
  Future<DeezerSongModel?> getTrack(String? id) async {
    try {
      final response = await _dio!.get(id ?? '');
      final result = DeezerSongModel.fromJson(response.data);
      return result;
    } on DioError catch (e) {
      print('Error occurred: $e');
      return null;
    }
  }
}