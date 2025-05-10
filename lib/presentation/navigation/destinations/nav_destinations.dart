abstract class NavDestinations {
  const NavDestinations();

  String get path;
  String get name;
}

class DashboardRoute extends NavDestinations {
  @override
  String get name => 'dashboard';

  @override
  String get path => '/dashboard';

  const DashboardRoute();
}
