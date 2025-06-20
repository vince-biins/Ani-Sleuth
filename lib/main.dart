import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/presentation/navigation/router/ani_router.dart';
import 'package:ani_sleuth/presentation/theme/ani_theme.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AniTheme.lightTheme(context),
      darkTheme: AniTheme.darkTheme(context),
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
