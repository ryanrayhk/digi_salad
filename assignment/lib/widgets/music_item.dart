import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/search_result.dart';
import '../viewmodels/music_controller.dart';
import '../views/music_detail_screen.dart';

class MusicItem extends StatelessWidget {
  final Music music;
  final VoidCallback onPlay;

  const MusicItem({Key? key, required this.music, required this.onPlay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final musicController = Get.find<MusicController>();

    return GestureDetector(
      onTap: () {
        Get.to(() => MusicDetailScreen(music: music));
      },
      child: Column(
        children: [
          ListTile(
            title: Text(music.trackName??""),
            subtitle: Text(music.artistName??""),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: music.trackId??0, // Unique tag for the Hero animation
                  child: Image.network(
                    music.artworkUrl100??"", // Assuming you have artworkUrl in your Music model
                    height: 40,
                    width: 40,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: onPlay,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}