import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/presentation/theme/ani_theme.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: BlocProvider(
        create: (context) => getIt<DashboardBloc>()
          ..add(const DashboardEvent.base(BaseEvent.loadPage())),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Top Anime'),
          ),
          body: Center(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    return const Text('Initial State');
                  case Loading():
                    return const CircularProgressIndicator();
                  case Loaded(:DashboardData data):
                    return ListView.builder(
                      itemCount: data.seasonalAnime.length,
                      itemBuilder: (context, index) {
                        final seasonalAnime = data.seasonalAnime[index];
                        return ListTile(
                          title: Text(seasonalAnime.title),
                          subtitle: Text(seasonalAnime.toString()),
                        );
                      },
                    );
                  case Error(:String message):
                    return Text('Error: $message');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
