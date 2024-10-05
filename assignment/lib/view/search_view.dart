// lib/screens/music_search_screen.dart
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/search_result.dart';
import '../service/music_service.dart';
import './widgets/search_field.dart';
import './widgets/music_item.dart';

class MusicSearchScreen extends StatefulWidget {
  @override
  _MusicSearchScreenState createState() => _MusicSearchScreenState();
}

class _MusicSearchScreenState extends State<MusicSearchScreen> {
  final TextEditingController _controller = TextEditingController();
  SearchResult? _results;
  final MusicService _musicService = MusicService();
  late AudioPlayer player = AudioPlayer();

  void _searchMusic() async {
    if (_controller.text.isNotEmpty) {
      final results = await _musicService.searchMusic(_controller.text);
      setState(() {
        _results = results;
      });
    }
  }

  Future<void> _playPreview(String url) async {
    await player.play(UrlSource(url));
  }

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Music Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(controller: _controller, onSearch: _searchMusic),
            Expanded(
              child: ListView.builder(
                itemCount: _results?.resultCount??0,
                itemBuilder: (context, index) {
                  final music = _results?.results?[index];
                  // TODO: handle error result
                  return MusicItem(
                    music: music??Result(),
                    onPlay: () => _playPreview(music?.previewUrl??""),
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