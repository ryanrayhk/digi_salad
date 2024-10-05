// lib/views/music_search_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/music_search_viewmodel.dart';
import './widgets/search_field.dart';
import './widgets/music_item.dart';

class MusicSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final musicViewModel = Provider.of<MusicViewModel>(context);
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Music Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(
              controller: _controller,
              onSearch: () {
                musicViewModel.searchMusic(_controller.text);
              },
            ),
            if(musicViewModel.results != null)
            Expanded(
              child: ListView.builder(
                itemCount: musicViewModel.results!.length,
                itemBuilder: (context, index) {
                  final music = musicViewModel.results![index];
                  return MusicItem(
                    music: music,
                    onPlay: () => musicViewModel.playPreview(music.previewUrl??""),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}