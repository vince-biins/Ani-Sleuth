import 'package:ani_sleuth/application/detail/bloc/detail_bloc.dart';
import 'package:ani_sleuth/domain/repository/a_detail_repository.dart';
import 'package:ani_sleuth/infrastructure/repository/a_detail_repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repository/anime_repository.dart';

void initializeDetailLocator(GetIt getIt) {
  getIt.registerLazySingleton<ADetailRepository>(
    () => ADetailRepositoryImpl(
      animeRepository: getIt<AnimeRepository>(),
    ),
  );

  getIt.registerCachedFactoryParam<DetailBloc, int, void>(
    (paramId, _) => DetailBloc(
      paramId: paramId,
      repository: getIt<ADetailRepository>(),
    ),
  );
}
