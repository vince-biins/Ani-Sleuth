import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/anime/entity/top_anime.dart';
import '../base/base_state.dart';

part 'library_event.dart';
part 'library_data.dart';
part 'library_bloc.freezed.dart';

typedef LibraryState = BaseState<LibraryData>;

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc() : super(LibraryState.initial()) {
    on<LoadedLibraryPage>((event, emit) {
      emit(LibraryState.success(LibraryData(topAnime: [])));
    });
  }
}
