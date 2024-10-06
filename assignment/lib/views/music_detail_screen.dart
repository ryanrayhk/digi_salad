import 'package:flutter/material.dart';
import '../models/search_result.dart';

class MusicDetailScreen extends StatelessWidget {
  final Music music;

  const MusicDetailScreen({Key? key, required this.music}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(music.trackName??""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: music.trackId??0, // Unique tag for the Hero animation
              child: Image.network(
                music.artworkUrl100??"", // Assuming you have artworkUrl in your Music model
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              music.trackName??"",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(music.artistName??"", style: TextStyle(fontSize: 18)),
            // Add more details if necessary
          ],
        ),
      ),
    );
  }
}