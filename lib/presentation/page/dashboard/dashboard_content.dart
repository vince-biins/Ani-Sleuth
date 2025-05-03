import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/seasonal_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardContent extends StatelessWidget {
  final DashboardData data;
  const DashboardContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(containerPadding),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SeasonalSection(
              seasonalAnime: data.seasonalAnime,
              onTap: (id) {
                context
                    .read<NavigationCubit>()
                    .navigateTo('/details', arguments: id);
              },
              onHover: (isHovered) {},
            ),
          ],
        ),
      ),
    );
  }
}
