import 'package:ani_sleuth/presentation/page/dashboard/dashboard_page.dart';
import 'package:ani_sleuth/presentation/theme/ani_theme.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AniTheme.lightTheme,
      darkTheme: AniTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: DashboardPage(),
    );
  }
}
