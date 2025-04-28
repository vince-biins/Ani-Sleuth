import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/anime_mapper.dart';
import 'package:ani_sleuth/domain/model/anime/entity/genre.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/dashboard_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ADashboardRepositoryImpl implements ADashboardRepository {
  final DashboardService _dashboardService;

  ADashboardRepositoryImpl({required DashboardService dashboardService})
      : _dashboardService = dashboardService;

  final _maxTopAnimeLimit = 25;
  final _maxTopSeasonalAnimeLimit = 25;
  final _maxTopCharacterLimit = 25;

  @override
  Future<Either<AFailure, List<Genre>>> getAllGenre() async {
    try {
      return await _dashboardService.getAllGenre().then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } on DioException catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    } catch (e) {
      return Left(
        AFailure(
          message: e.toString(),
          error: e.toString(),
          statusCode: 500,
        ),
      );
    }
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getSeasonalAnime({
    required int limit,
  }) async {
    try {
      return await _dashboardService
          .getAllSeasonalAnime(
              limit: _checkMaxLimit(limit, _maxTopSeasonalAnimeLimit))
          .then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getTopAnime({
    required int limit,
  }) async {
    try {
      final res = await _dashboardService.getTopAnime(
        limit: _checkMaxLimit(limit, _maxTopAnimeLimit),
      );

      return Right(res.data?.map((e) => e.transform()).toList() ?? []);
    } catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }

  @override
  Future<Either<AFailure, List<TopCharacter>>> getTopCharacters({
    required int limit,
  }) async {
    try {
      return await _dashboardService
          .getTopCharacters(limit: _checkMaxLimit(limit, _maxTopCharacterLimit))
          .then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }

  int _checkMaxLimit(int limit, int maxLimit) =>
      limit > maxLimit ? maxLimit : limit;
}
