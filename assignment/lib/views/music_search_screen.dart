import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/music_controller.dart';
import '../widgets/search_field.dart';
import '../widgets/music_item.dart';

class MusicSearchScreen extends StatelessWidget {
  final MusicController musicController = Get.put(MusicController());
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(
              controller: _controller,
              onSearch: () {
                musicController.searchMusic(_controller.text);
              },
            ),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: musicController.results.length,
                  itemBuilder: (context, index) {
                    final music = musicController.results[index];
                    return MusicItem(
                      music: music,
                      onPlay: () => musicController.playPreview(music.previewUrl??""),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}