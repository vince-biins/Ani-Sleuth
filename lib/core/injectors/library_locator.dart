import 'package:get_it/get_it.dart';

import '../../application/library/library_bloc.dart';

void initializeLibraryLocator(GetIt getIt) {
  getIt.registerFactory(
    () => LibraryBloc(),
  );
}
