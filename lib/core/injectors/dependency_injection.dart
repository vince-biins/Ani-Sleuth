import 'package:ani_sleuth/core/injectors/dashboard_locator.dart';
import 'package:ani_sleuth/core/injectors/dio_locator.dart';
import 'package:ani_sleuth/core/injectors/service_locator.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> initializeDependencies() async {
  initializeDio(getIt);
  initializeServiceLocator(getIt);
  initializeDashboardLocator(getIt);
}
