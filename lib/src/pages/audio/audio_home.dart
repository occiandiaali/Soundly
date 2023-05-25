import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../utils/format_time.dart';

class AudioHomePage extends StatefulWidget {
  const AudioHomePage({Key? key}) : super(key: key);

  @override
  State<AudioHomePage> createState() => _AudioHomePageState();
}

class _AudioHomePageState extends State<AudioHomePage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    setAudio();
    super.initState();
    // Listen to play states
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    // Listen to audio duration
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // Listen to audio position
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    // play
   // audioPlayer.play(Uri.parse('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'))
    // repeat song
    audioPlayer.setReleaseMode(ReleaseMode.loop);

    // load audio from url
    String url =
        'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
    audioPlayer.setSourceUrl(url);

    // load local file
    //TODO:
  }
  
  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/black-woman-face.jpeg',
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 32,),
          const Text(
            'These boots were made for showing',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.w800
            ),
          ),
          const SizedBox(height: 4,),
          const Text(
            'MammaPhilia',
            style: TextStyle(fontSize: 20, fontFamily: 'Cera Pro'),
          ),
          Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) async {
              final position = Duration(seconds: value.toInt());
              await audioPlayer.seek(position);

              // Optional: Play audio if paused
              await audioPlayer.resume();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatTime(position)),
                Text(formatTime(duration - position)),
              ],
            ),
          ),
          CircleAvatar(
            radius: 28,
            child: IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              ),
              iconSize: 28,
              onPressed: () async {
                if (isPlaying) {
                  await audioPlayer.pause();
                } else {
                  await audioPlayer.resume();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
