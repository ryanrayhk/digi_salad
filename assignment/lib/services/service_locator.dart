import 'package:get_it/get_it.dart';
import 'music_service.dart';
import '../viewmodels/music_controller.dart';

GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<MusicService>(() => MusicService());
  getIt.registerFactory<MusicController>(() => MusicController());
}