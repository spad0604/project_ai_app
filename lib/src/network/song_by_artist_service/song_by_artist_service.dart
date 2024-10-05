import 'package:dio/dio.dart';
import 'package:shazam_app/src/model/song_by_artist/song_by_artist.dart';

class SongByArtistService {
  Dio? _dio;

  SongByArtistService() {
    BaseOptions options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 10000),
        connectTimeout: const Duration(milliseconds: 10000),
        baseUrl: 'https://api.deezer.com/artist/'
    );
    _dio = Dio(options);
  }

  Future<List<SongByArtist>?> getSongByArtist(String? id) async {
    try {
      final response = await _dio!.get('$id/top?limit=50');
      if (response.data != null && response.data['data'] is List) {
        print(response.data['data']);
        final List<SongByArtist> result = (response.data['data'] as List)
            .map((item) => SongByArtist.fromJson(item))
            .toList();
        return result;
      } else {
        return [];
      }
    } on DioError catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
