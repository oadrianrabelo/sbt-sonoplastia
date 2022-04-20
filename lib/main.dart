import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sbt_sonoplastia/cardSom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.STOP);
    // String url = 'https://www.applesaucekids.com/sound%20effects/moo.mp3';
    // audioPlayer.setUrl(url);

    // load from asset
    final player = AudioCache(prefix: 'assets/audio/');
    final url = await player.load('ui-rodrigo-faro.mp3');
    audioPlayer.setUrl(url.path, isLocal: true);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBT Sonoplastia',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: Center(
          child: ListView(
            children: const [
              CardSom(
                url: 'ui-rodrigo-faro.mp3',
                name: 'UUUUUUUUI!',
              ),
              CardSom(
                url: 'moo.mp3',
                name: 'MOO',
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('SBT SONOPLASTIA'),
          backgroundColor: const Color.fromARGB(255, 39, 1, 83),
        ),
      ),
    );
  }
}
