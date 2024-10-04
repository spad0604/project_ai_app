import 'package:flutter/material.dart';
import 'package:shazam_app/src/instance.dart';
import 'package:shazam_app/src/presentation/song_finder/screen/song_finder_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SongFinderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}