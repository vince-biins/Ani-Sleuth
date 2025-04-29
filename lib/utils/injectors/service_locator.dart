import 'package:ani_sleuth/infrastructure/data_source/remote/service/anime/anime_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/character/character_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/dashboard_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/genre/genre_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/manga/manga_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void initializeDashboardLocator(GetIt getIt) {
  getIt.registerLazySingleton<DashboardService>(
    () => DashboardService(getIt.get<Dio>(instanceName: 'apiDio')),
  );

  getIt.registerLazySingleton<AnimeService>(
    () => AnimeService(getIt.get<Dio>(instanceName: 'apiDio')),
  );

  getIt.registerLazySingleton<CharacterService>(
    () => CharacterService(getIt.get<Dio>(instanceName: 'apiDio')),
  );

  getIt.registerLazySingleton<MangaService>(
    () => MangaService(getIt.get<Dio>(instanceName: 'apiDio')),
  );

  getIt.registerLazySingleton<GenreService>(
    () => GenreService(getIt.get<Dio>(instanceName: 'apiDio')),
  );
}
