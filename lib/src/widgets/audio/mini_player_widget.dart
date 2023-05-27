import 'package:flutter/material.dart';
import 'package:soundly/src/pages/audio/audio_home.dart';
import 'package:soundly/src/utils/soundly_mini_player_track_shape.dart';
import 'package:soundly/src/widgets/audio/currently_playing_thumbnail_widget.dart';

class MiniPlayerWidget extends StatelessWidget {
  const MiniPlayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: SizedBox(
        height: 61,
        child: Column(
          children: [
            SizedBox(
              height: 1,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.orange,
                  inactiveTrackColor: Colors.red.withOpacity(0.3),
                  trackShape: SoundlyMiniPlayerTrackShape(),
                  trackHeight: 2,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 0,
                  ),
                ),
                child: const Slider(
                  value: 12,
                  max: 100,
                  onChanged: null,
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AudioHomePage()));
                    },
                    child: Row(
                      children: const [
                        Flexible(
                          child: CurrentlyPlayingThumbnail(
                              height: 60,
                              width: 60),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
