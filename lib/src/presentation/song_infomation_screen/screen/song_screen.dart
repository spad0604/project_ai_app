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
    _initialize();
    songByArtistList = bloc.state.listSongByArtist;

    bloc.setPreviewUrl(widget.song?.preview);

    _scrollController.addListener(() {
      bloc.setScrollControler(_scrollController.position.pixels);
      print(_scrollController.position.pixels);
    });

    super.initState();
  }

  void dispose() {
    _audioPlayer.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _initialize() async {
    _audioPlayer = AudioPlayer();
    shazam.resetData();
    shazam.stopRecognizing();
    bloc.getMusicByArtist(widget.song!.artist.id.toString());

    if (bloc.state.isPlayingMusic == true) {
      _playerPreview(widget.song!.preview);
    }
  }

  Future<void> _playerPreview(String? url) async {
    if (url != null) {
      await _audioPlayer.play(UrlSource(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<SongInfomationCubit, SongInfomationState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.isPlayingMusic == false && _audioPlayer.state == PlayerState.playing) {
          _audioPlayer.pause();
        } else if (state.isPlayingMusic == true) {
          _playerPreview(state.previewUrl);
        }

        songByArtistList = state.listSongByArtist;

        double? scrollValue = state.scrollPosition ?? screenWidth;

        double imageSize = screenWidth;

        if (scrollValue > 100) {
          imageSize = screenWidth - screenWidth / 2;
        } else if (scrollValue >= 20) {
          imageSize = screenWidth - (screenWidth * scrollValue / 100);
        }

        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
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
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _playerPreview(widget.song?.preview);
                          bloc.setPreviewUrl(widget.song?.preview);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: imageSize,
                          height: imageSize,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(widget.song?.album.coverBig ?? ''),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                _playerPreview(widget.song?.preview);
                                bloc.setPreviewUrl(widget.song?.preview);
                              },
                              child: TextMarquee(
                                widget.song?.title ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                                spaceSize: 72,
                                delay: const Duration(seconds: 2),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              bloc.playMusic(
                                  _audioPlayer, widget.song!.preview.toString());
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      _songByArtistList(),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'TRACK INFOMATION',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
                            _buildRow('Release', widget.song?.releaseDate ?? '')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth / 2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _songByArtistList() {
    return BlocBuilder<SongInfomationCubit, SongInfomationState>(
      bloc: bloc,
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: songByArtistList.map((song) {
                return GestureDetector(
                  onTap: () {
                    bloc.setPreviewUrl(song.preview);
                    _playerPreview(song.preview);
                  },
                  child: Container(
                    color: Colors.black,
                    width: 200,
                    height: 250,
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
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
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
