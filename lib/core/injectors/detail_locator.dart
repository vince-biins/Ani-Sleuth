import 'package:ani_sleuth/application/detail/anime/detail_bloc.dart';
import 'package:ani_sleuth/application/detail/character/character_bloc.dart';
import 'package:ani_sleuth/application/detail/usecase/get_character_detail_use_case.dart';
import 'package:ani_sleuth/domain/repository/a_detail_repository.dart';
import 'package:ani_sleuth/domain/repository/character_repository.dart';
import 'package:ani_sleuth/infrastructure/repository/a_detail_repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repository/anime_repository.dart';

void initializeDetailLocator(GetIt getIt) {
  getIt.registerLazySingleton<ADetailRepository>(
    () => ADetailRepositoryImpl(
      animeRepository: getIt<AnimeRepository>(),
      characterRepository: getIt<CharacterRepository>(),
    ),
  );

  getIt.registerCachedFactoryParam<DetailBloc, int, void>(
    (paramId, _) => DetailBloc(
      paramId: paramId,
      repository: getIt<ADetailRepository>(),
    ),
  );

  getIt.registerLazySingleton<GetCharacterDetailUseCase>(
    () => GetCharacterDetailUseCase(
      getIt<ADetailRepository>(),
    ),
  );

  getIt.registerCachedFactoryParam<CharacterBloc, int, void>(
    (paramId, _) => CharacterBloc(
      paramId: paramId,
      getCharacterDetailUseCase: getIt<GetCharacterDetailUseCase>(),
    ),
  );
}
