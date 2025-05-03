import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/core/injectors/dashboard_locator.dart';
import 'package:ani_sleuth/core/injectors/dio_locator.dart';
import 'package:ani_sleuth/core/injectors/service_locator.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> initializeDependencies() async {
  initializeDio(getIt);
  initializeBaseDependencied();
  initializeServiceLocator(getIt);
  initializeDashboardLocator(getIt);
}

void initializeBaseDependencied() {
  getIt.registerFactory(
    () => NavigationCubit(),
  );
}
