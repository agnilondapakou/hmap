import 'package:get/get.dart';
import 'package:hmap/pages/dashboard_page.dart';
import 'package:hmap/pages/home_page.dart';
import 'package:hmap/pages/loading_page.dart';

class RoutesClasse {
  static const String loading = '/';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String hotels = '/hotels';
  static const String restaurants = '/restaurants';
  static const String sites = '/sites';
  static const String localistaion = '/localisation';

  static String getHomeRoute() => home;
  static String getDashboarRoute() => dashboard;
  static String getLoadingRoute() => loading;

  static List<GetPage> routes = [
    GetPage(page: () => HomePage(), name: home),
    GetPage(page: () => DashboardPage(), name: dashboard),
    GetPage(page: () => LoadingPage(), name: loading),
  ];
}
