import 'package:flutter/material.dart';
import '../models/search_result.dart';
import '../services/music_service.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicViewModel extends ChangeNotifier {
  final MusicService _musicService = MusicService();
  final AudioPlayer _audioPlayer = AudioPlayer();

  SearchResult? _result;
  List<Result>? get results => _result?.results;

  void searchMusic(String query) async {
    if (query.isNotEmpty) {
      _result = await _musicService.searchMusic(query);
      notifyListeners();
    }
  }

  Future<void> playPreview(String url) async {
    await _audioPlayer.play(UrlSource(url));
  }
}