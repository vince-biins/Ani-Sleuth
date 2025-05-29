import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:ani_sleuth/domain/repository/a_detail_repository.dart';
import 'package:dartz/dartz.dart';

class GetCharacterDetailUseCase {
  final ADetailRepository _detailRepository;

  GetCharacterDetailUseCase(ADetailRepository detailRepository)
      : _detailRepository = detailRepository;

  Future<Either<AFailure, Character?>> call(int id) {
    return _detailRepository.getAnimeCharacterFullById(id);
  }
}
