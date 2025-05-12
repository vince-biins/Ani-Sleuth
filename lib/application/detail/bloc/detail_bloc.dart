import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/anime/entity/full_anime.dart';
import '../../../domain/repository/a_detail_repository.dart';
import '../../base/base_state.dart';

part 'detail_event.dart';
part 'detail_data.dart';
part 'detail_bloc.freezed.dart';

typedef DetailState = BaseState<DetailData>;

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final ADetailRepository _repository;
  final int _paramId;

  DetailBloc({required int paramId, required ADetailRepository repository})
      : _repository = repository,
        _paramId = paramId,
        super(DetailState.initial()) {
    on<LoadedDetailPage>(_handleLoadPage);
  }

  Future<void> _handleLoadPage(
    LoadedDetailPage event,
    Emitter<DetailState> emit,
  ) async {
    emit(DetailState.loading());
    final animeResult = await _repository.getFullAnimeDetail(_paramId);

    animeResult.fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => emit(DetailState.success(DetailData(anime: success))),
    );
  }
}
