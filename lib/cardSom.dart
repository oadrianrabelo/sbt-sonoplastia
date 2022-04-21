import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CardSom extends StatefulWidget {
  final String url;
  final String name;
  final bool isAsset;

  const CardSom({
    Key? key,
    required this.name,
    required this.url,
    this.isAsset = true,
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
    // setAudio();

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

  void playSound() {
    AudioCache audioCache;
    audioCache = AudioCache(fixedPlayer: audioPlayer, prefix: 'assets/audio/');
    audioCache.play(widget.url);
  }

  void stopSound() {
    audioPlayer.stop();
  }
  // store method for future usage -> for example an audio player
  // Future setAudio() async {
  //   audioPlayer.setReleaseMode(ReleaseMode.RELEASE);
  //   if (widget.isAsset) {
  //     // load from asset
  //     final player = AudioCache(prefix: 'assets/audio/');
  //     final url = await player.load(widget.url);
  //     audioPlayer.setUrl(url.path, isLocal: true);
  //
  //   } else {
  //     // load from URL
  //     audioPlayer.setUrl(widget.url);
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CircleAvatar(
              radius: 25,
              child: IconButton(
                icon: const Icon(
                  Icons.play_arrow,
                ),
                iconSize: 35,
                onPressed: () {
                  if (isPlaying) {
                    stopSound();
                  }
                  playSound();
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
