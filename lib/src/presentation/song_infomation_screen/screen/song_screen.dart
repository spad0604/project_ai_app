import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shazam_app/src/instance.dart';
import 'package:shazam_app/src/model/song_by_artist/song_by_artist.dart';
import 'package:shazam_app/src/presentation/song_finder/bloc/song_screen_cubit.dart';
import 'package:shazam_app/src/presentation/song_infomation_screen/bloc/song_infomation_cubit.dart';
import 'package:text_marquee/text_marquee.dart';
import '../../../model/song_infomation/song_infomation.dart';

class SongScreen extends StatefulWidget {
  final DeezerSongModel? song;

  const SongScreen({super.key, required this.song});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  final shazam = getIt<SongScreenCubit>();
  final bloc = getIt<SongInfomationCubit>();
  List<SongByArtist> songByArtistList = [];

  late AudioPlayer _audioPlayer;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    shazam.resetData();
    _audioPlayer = AudioPlayer();
    _initilaze();

    songByArtistList = bloc.state.listSongByArtist;
    _playerPreview();
    super.initState();
  }

  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _initilaze() async {
    bloc.getMusicByArtist(widget.song!.artist.id.toString());
  }

  Future<void> _playerPreview() async {
    print(widget.song?.preview.toString());
    final url = widget.song?.preview.toString();
    if (url != null) {
      await _audioPlayer.play(UrlSource(url));
    }
    else {
      bloc.playMusic();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<SongInfomationCubit, SongInfomationState>(
      bloc: bloc,
      builder: (context, state) {
        songByArtistList = state.listSongByArtist;
        bool isMinimized = state.isMinimized;
        return Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: bloc.toggleMinimize,
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.zoom_out_map,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: isMinimized ? 100 : screenWidth,
                  height: isMinimized ? 100 : screenWidth,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.song?.album.coverBig ?? ''),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextMarquee(
                        widget.song?.title ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        bloc.playMusic();
                        if(state.isPlayingMusic == false) {
                          dispose();
                        } else {
                          _playerPreview();
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(state.isPlayingMusic
                            ? Icons.pause
                            : Icons.play_arrow),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.song?.artist.name ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0xFF818185),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'SONG FROM ${widget.song?.artist.name}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _songByArtistList(),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFF141414),
                  child: Column(
                    children: [
                      _buildRow('Track', widget.song?.title ?? ''),
                      _divider(),
                      _buildRow('Artist', widget.song?.artist.name ?? ''),
                      _divider(),
                      _buildRow('Album', widget.song?.album.title ?? ''),
                      _divider(),
                      _buildRow(
                          'Release', widget.song?.releaseDate.toString() ?? '')
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _songByArtistList() {
    return BlocBuilder<SongInfomationCubit, SongInfomationState>(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          height: 200, 
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: songByArtistList.map((song) {
                return Container(
                  color: Colors.black,
                  width: 100,
                  height: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.network(song.album.cover ?? ''),
                        Text(
                          song.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _buildRow(String title, String value) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '$title:',
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Color(0xFF818185)),
        ),
        Text(value,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
      ]),
    );
  }

  Widget _divider() {
    return const Divider(
      color: Color(0xFF818185),
      thickness: 1.0,
    );
  }
}
