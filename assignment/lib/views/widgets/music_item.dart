// lib/widgets/music_item.dart
import 'package:flutter/material.dart';
import '../../models/search_result.dart';

class MusicItem extends StatelessWidget {
  final Result music;
  final VoidCallback onPlay;

  const MusicItem({Key? key, required this.music, required this.onPlay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(music.trackName??""),
      subtitle: Text(music.artistName??""),
      trailing: IconButton(
        icon: Icon(Icons.play_arrow),
        onPressed: onPlay,
      ),
    );
  }
}