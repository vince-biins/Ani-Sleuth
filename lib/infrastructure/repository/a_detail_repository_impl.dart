import 'package:ani_sleuth/application/api_util/a_failure.dart';

import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/a_detail_repository.dart';

class ADetailRepositoryImpl implements ADetailRepository {
  final AnimeRepository _animeRepository;
  const ADetailRepositoryImpl({required AnimeRepository animeRepository})
      : _animeRepository = animeRepository;

  @override
  Future<Either<AFailure, FullAnime?>> getFullAnimeDetail(int id) async =>
      await _animeRepository.getAnimeFullById(id: id);
}
