import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/dashboard_service.dart';
import 'package:ani_sleuth/infrastructure/repository/a_dashboard_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void initializeDashboardLocator(GetIt getIt) {
  getIt.registerLazySingleton<DashboardService>(
    () => DashboardService(getIt.get<Dio>(instanceName: 'apiDio')),
  );
  getIt.registerLazySingleton<ADashboardRepository>(
    () => ADashboardRepositoryImpl(
      dashboardService: getIt<DashboardService>(),
    ),
  );
}
