import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:dartz/dartz.dart';

/// Todo: [ADashboardRepository] -
/// 1. Add Top Airing Anime
/// 2. Add Top Upcoming Anime
/// 3. Add Top Movies
/// 4. Add Most Popular Anime
/// 5. Add Most Popular Characters
/// 6. Add Most Favorite Anime

abstract class ADashboardRepository {
  Future<Either<AFailure, List<TopAnime>>> getTopAnime({
    required int limit,
  });

  Future<Either<AFailure, List<TopCharacter>>> getTopCharacters({
    required int limit,
  });
  Future<Either<AFailure, List<Genre>>> getAnimeGenre();
  Future<Either<AFailure, List<SeasonalAnime>>> getSeasonalAnime({
    required int limit,
  });

  Future<Either<AFailure, List<FullAnime>>> getMostFavoriteAnime({
    required int limit,
  });
}
