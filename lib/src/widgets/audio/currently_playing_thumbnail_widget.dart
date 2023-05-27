import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentlyPlayingThumbnail extends ConsumerWidget {
  final double height;
  final double width;

  const CurrentlyPlayingThumbnail({Key? key, required this.height, required this.width})
  : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentlyPlaying = ref.watch();
    // return currentlyPlaying.when();
    return const Text('null');
  }
}
