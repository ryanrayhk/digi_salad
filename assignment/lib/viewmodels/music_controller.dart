import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../models/search_result.dart';
import '../services/music_service.dart';
import 'package:audioplayers/audioplayers.dart';

GetIt getIt = GetIt.instance;

class MusicController extends GetxController {
  final MusicService _musicService = getIt<MusicService>();
  final _audioPlayer = AudioPlayer();
  var results = <Music>[].obs;

  void searchMusic(String query) async {
    if (query.isNotEmpty) {
      results.value = (await _musicService.searchMusic(query))??List.empty();
    }
  }

  Future<void> playPreview(String url) async {
    await _audioPlayer.play(UrlSource(url));
  }
}