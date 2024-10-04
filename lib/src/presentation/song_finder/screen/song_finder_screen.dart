import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shazam_app/src/instance.dart';
import 'package:shazam_app/src/presentation/song_finder/bloc/song_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../song_infomation_screen/screen/song_screen.dart';

class SongFinderScreen extends StatefulWidget {
  const SongFinderScreen({super.key});

  @override
  State<SongFinderScreen> createState() => _SongFinderScreenState();
}

class _SongFinderScreenState extends State<SongFinderScreen> {
  final bloc = getIt<SongScreenCubit>();
  bool? isRecognizing;
  bool? success;

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  Future<void> _initialize() async {
    await bloc.initAcr();
    isRecognizing = bloc.state.isRecognizing;
    success = bloc.state.success;
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongScreenCubit, SongScreenState>(
      bloc: bloc,
      builder: (context, state) {
        isRecognizing = state.isRecognizing;
        success = state.success;
        if (state.success == true && state.songModel != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SongScreen(song: state.songModel),
              ),
            );
          });
        }
        return Scaffold(
          backgroundColor: const Color(0xFF042442),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Tap to Shazam',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                 const SizedBox(
                  height: 40,
                ),
                AvatarGlow(
                  animate: isRecognizing ?? false,
                  child: GestureDetector(
                    onTap: () {
                      if (isRecognizing == true) {
                        bloc.stopRecognizing();
                      } else {
                        bloc.startRecognizing();
                      }
                    },
                    child: Material(
                      shape: const CircleBorder(),
                      elevation: 8,
                      child: Container(
                          padding: const EdgeInsets.all(40),
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF089af8),
                          ),
                          child: Image.asset(
                            'assets/image/shazam.png',
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
