import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/music_search_screen.dart';
import 'viewmodels/music_search_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MusicViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Search App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MusicSearchScreen(),
    );
  }
}