import 'package:food_card/routes/routes.dart';
import 'package:food_card/ui/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../ui/home/bindings/home_binding.dart';
import '../ui/home/views/home_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.splash;

  static appRoutes() => [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.splash,
      page: () => const SplashView()
    ),
  ];
}
