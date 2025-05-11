abstract class NavDestinations {
  const NavDestinations();

  String get path;
  String get name;
}

abstract class NavRouteWithParam extends NavDestinations {
  const NavRouteWithParam();

  String get paramName;

  String get templatePath => _templateSubPath();
  String pathWithParam(String param) {
    if (templatePath.contains(paramName)) {
      return templatePath.replaceAll(paramName, param);
    } else {
      return templatePath;
    }
  }

  String _templateSubPath() {
    if (path.contains(':')) {
      return path;
    } else {
      return path;
    }
  }
}

class DashboardRoute extends NavDestinations {
  @override
  String get name => 'dashboard';

  @override
  String get path => '/dashboard';

  const DashboardRoute();
}
