import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';
import 'package:ani_sleuth/domain/repository/character_repository.dart';
import 'package:ani_sleuth/domain/repository/genre_repository.dart';
import 'package:ani_sleuth/domain/repository/manga_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/anime/anime_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/character/character_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/genre/genre_service.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/manga/manga_service.dart';
import 'package:ani_sleuth/infrastructure/repository/a_dashboard_repository_impl.dart';
import 'package:ani_sleuth/infrastructure/repository/anime_repository_impl.dart';
import 'package:ani_sleuth/infrastructure/repository/character_repository_impl.dart';
import 'package:ani_sleuth/infrastructure/repository/genre_repository_impl.dart';
import 'package:ani_sleuth/infrastructure/repository/manga_repository_impl.dart';
import 'package:get_it/get_it.dart';

void initializeDashboardLocator(GetIt getIt) {
  getIt.registerLazySingleton<AnimeRepository>(
    () => AnimeRepositoryImpl(
      animeService: getIt<AnimeService>(),
    ),
  );

  getIt.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(
      characterService: getIt<CharacterService>(),
    ),
  );

  getIt.registerLazySingleton<GenreRepository>(
    () => GenreRepositoryImpl(
      genreService: getIt<GenreService>(),
    ),
  );

  getIt.registerLazySingleton<MangaRepository>(
    () => MangaRepositoryImpl(
      mangaService: getIt<MangaService>(),
    ),
  );

  getIt.registerLazySingleton<ADashboardRepository>(
    () => ADashboardRepositoryImpl(
      animeRepository: getIt<AnimeRepository>(),
      characterRepository: getIt<CharacterRepository>(),
      genreRepository: getIt<GenreRepository>(),
    ),
  );
}
