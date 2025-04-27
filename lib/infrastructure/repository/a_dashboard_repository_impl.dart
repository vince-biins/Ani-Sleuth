import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/anime_mapper.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/dashboard_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ADashboardRepositoryImpl implements ADashboardRepository {
  final DashboardService _dashboardService;

  ADashboardRepositoryImpl({required DashboardService dashboardService})
      : _dashboardService = dashboardService;
  @override
  Future<Either<AFailure, List<TopAnime>>> getAllGenre({
    required int limit,
  }) async {
    try {
      return await _dashboardService.getAllGenre(limit: limit).then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } on DioException catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getSeasonalAnime({
    required int limit,
  }) async {
    try {
      return await _dashboardService
          .getAllSeasonalAnime(limit: limit)
          .then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } on DioException catch (e) {
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
      return await _dashboardService.getTopAnime(limit: limit).then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } on DioException catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getTopCharacters({
    required int limit,
  }) async {
    try {
      return await _dashboardService
          .getTopCharacters(limit: limit)
          .then((value) {
        return Right(value.data?.map((e) => e.transform()).toList() ?? []);
      });
    } on DioException catch (e) {
      return Left(
        AFailure.fromDioException(e),
      );
    }
  }
}
