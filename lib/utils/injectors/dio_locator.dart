import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void initializeDio(GetIt getIt) {
  getIt.registerLazySingleton<Dio>(instanceName: 'apiDio', () {
    return Dio(
      BaseOptions(baseUrl: 'https://api.jikan.moe/'),
    );
  });
}
