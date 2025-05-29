import 'dart:async';

import 'package:ani_sleuth/application/detail/usecase/get_character_detail_use_case.dart';
import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../base/base_state.dart';

part 'character_event.dart';
part 'character_data.dart';
part 'character_bloc.freezed.dart';

typedef CharacterState = BaseState<CharacterData>;

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetCharacterDetailUseCase _getCharacterDetailUseCase;
  final int _paramId;
  CharacterBloc({
    required int paramId,
    required GetCharacterDetailUseCase getCharacterDetailUseCase,
  })  : _paramId = paramId,
        _getCharacterDetailUseCase = getCharacterDetailUseCase,
        super(CharacterState.initial()) {
    on<LoadedCharacterDetailPage>(_handleLoadPage);
  }

  FutureOr _handleLoadPage(
    LoadedCharacterDetailPage event,
    Emitter<CharacterState> emit,
  ) async {
    emit(CharacterState.loading());
    final result = await _getCharacterDetailUseCase.call(_paramId);
    result.fold(
      (error) => emit(CharacterState.error(error.message)),
      (success) =>
          emit(CharacterState.success(CharacterData(character: success))),
    );
  }
}
