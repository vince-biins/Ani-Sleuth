import 'package:ani_sleuth/presentation/navigation/destinations/ani_route_builder.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: DashboardRoute().location,
  routes: $appRoutes,
  errorBuilder: (context, state) => ErrorRoute(
    error: state.error.toString(),
  ).build(context, state),
);
