import 'package:flutter/material.dart';

class AudioTrackTileWidget extends StatelessWidget {
  const AudioTrackTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepOrange,
        ),
      ),
      title: const Text("Track Title"),
      subtitle: const Text("Artist Name"),
      onTap: () {},
    );
  }
}
