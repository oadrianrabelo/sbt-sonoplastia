import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CardSom extends StatefulWidget {
  final String url;
  final String name;

  const CardSom({
    Key? key,
    required this.name,
    required this.url,
  }) : super(key: key);

  @override
  State<CardSom> createState() => _CardSomState();
}

class _CardSomState extends State<CardSom> {
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
    final url = await player.load(widget.url);
    audioPlayer.setUrl(url.path, isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                  } else {
                    await audioPlayer.resume();
                  }
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Slider(
          //   min: 0,
          //   max: duration.inSeconds.toDouble(),
          //   value: position.inSeconds.toDouble(),
          //   onChanged: (value) async {
          //     final position = Duration(seconds: value.toInt());
          //
          //     await audioPlayer.seek(position);
          //
          //     await audioPlayer.resume();
          //   },
          // ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formatTime(position),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                // Text(formatTime(duration - position)),
                // Text(formatTime(duration - position)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}
