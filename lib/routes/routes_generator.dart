/*
import 'package:flutter/material.dart';
import 'package:food_card/ui/home/views/home_view.dart';
import 'package:get/get.dart';
import '../ui/home/bindings/home_binding.dart';
import '../ui/splash_screen/splash_screen.dart';
import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic>? args;
    try {
      args = settings.arguments as Map<String, dynamic>?;
    } catch (_) {
      args = null;
    }

    // logRouteAnalytics(routeName: settings.name, arguments: args);

    switch (settings.name) {
      // case Routes.index:
      //   return MaterialPageRoute<dynamic>(builder: (_) => HomeUI());
      case Routes.index:
        return GetPageRoute<dynamic>(
          page: () => const HomeView(),
          binding: HomeBinding(),
          settings: settings,
        );
      case Routes.splash:
        return MaterialPageRoute<dynamic>(builder: (_) => const SplashView());
      case Routes.home:
        return MaterialPageRoute<dynamic>(builder: (_) => const HomeView());



      default:
        return _route404();
    }
  }

  static Route<dynamic> _route404() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }

  */
/*static void logRouteAnalytics(
      {String? routeName, Map<String, dynamic>? arguments}) {
    AnalyticsService.to.sendPageAnalytics(routeName);
  }*//*

}
*/
