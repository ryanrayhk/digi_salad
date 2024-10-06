import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'services/service_locator.dart';
import 'views/music_search_screen.dart';

void main() {
  setup();
  runApp(GetMaterialApp(home: MusicSearchScreen()));
}