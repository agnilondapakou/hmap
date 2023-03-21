import 'package:get/get.dart';
import 'package:hmap/pages/hotels_regions.dart';

import '../pages/dashboard_page.dart';
import '../pages/home_page.dart';
import '../pages/loading_page.dart';
import '../pages/login_page.dart';

class RoutesClasse {
  static const String loading = '/';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String hotels = '/hotels';
  static const String restaurants = '/restaurants';
  static const String sites = '/sites';
  static const String localistaion = '/localisation';
  static const String annonces = '/annonces';
  static const String login = '/login';
  static const String register = '/register';
  static const String hotelsRegions = '/hotelsRegions';

  static String getHomeRoute() => home;
  static String getDashboarRoute() => dashboard;
  static String getLoadingRoute() => loading;
  static String getLoginRoute() => login;
  static String getRegisterRoute() => register;
  static String getHotelsRegionsRoute() => hotelsRegions;

  static List<GetPage> routes = [
    GetPage(page: () => HomePage(), name: home),
    GetPage(page: () => DashboardPage(), name: dashboard),
    GetPage(page: () => LoadingPage(), name: loading),
    GetPage(page: () => LoginPage(), name: login),
    GetPage(page: () => HotelsRegionsPage(), name: hotelsRegions)
  ];
}
