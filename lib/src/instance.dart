import 'package:get_it/get_it.dart';
import 'package:shazam_app/src/presentation/song_finder/bloc/song_screen_cubit.dart';
import 'package:shazam_app/src/presentation/song_infomation_screen/bloc/song_infomation_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<SongScreenCubit>(() => SongScreenCubit());
  getIt.registerFactory<SongInfomationCubit>(() => SongInfomationCubit());
}
