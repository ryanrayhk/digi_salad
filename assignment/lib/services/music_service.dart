import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/search_result.dart';

class MusicService {
  Future<SearchResult> searchMusic(String query) async {
    final url = 'https://itunes.apple.com/search?term=$query&entity=song';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return SearchResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load music');
    }
  }
}