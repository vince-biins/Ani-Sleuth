import 'package:ani_sleuth/utils/injectors/dashboard_locator.dart';
import 'package:ani_sleuth/utils/injectors/dio_locator.dart';
import 'package:ani_sleuth/utils/injectors/service_locator.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initializeDependencies() {
  initializeDio(getIt);
  initializeServiceLocator(getIt);
  initializeDashboardLocator(getIt);
}
