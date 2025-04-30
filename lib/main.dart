import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';

import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/presentation/theme/ani_theme.dart';
import 'package:ani_sleuth/utils/injectors/dependency_injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

void main() {
  initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  ADashboardRepository get dashboardRepository => getIt<ADashboardRepository>();

  @override
  Widget build(BuildContext context) {
    final Future<Either<AFailure, List<SeasonalAnime>>> topAnimeFuture =
        dashboardRepository.getSeasonalAnime(limit: 30);

    return MaterialApp(
      theme: AniTheme.lightTheme,
      darkTheme: AniTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Top Anime'),
        ),
        body: Center(
          child: FutureBuilder<Either<AFailure, List<SeasonalAnime>>>(
            future: topAnimeFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(); // Show loading indicator
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                return snapshot.data!.fold(
                    (failure) => Text('Error: ${failure.message}'),
                    (animeList) => Text(animeList.toString()));
              } else {
                return const Text('No data received.');
              }
            },
          ),
        ),
      ),
    );
  }
}
