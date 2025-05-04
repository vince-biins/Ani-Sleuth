import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/presentation/page/dashboard/dashboard_page.dart';
import 'package:ani_sleuth/presentation/theme/ani_theme.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/presentation/theme/ani_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(
    BlocProvider<NavigationCubit>(
      create: (context) => getIt<NavigationCubit>(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AniTheme.lightTheme(context),
      darkTheme: AniTheme.darkTheme(context),
      themeMode: ThemeMode.system,
      home: DashboardPage(),
    );
  }
}
