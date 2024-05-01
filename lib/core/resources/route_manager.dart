import 'package:flutter/material.dart';
import 'package:mini_nft/features/home/home_page.dart';
import 'package:mini_nft/features/onBoarding/on_boarding_page.dart';
import 'package:mini_nft/features/stats/stats_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.onBoardingPage: (context) => const OnBoardingPage(),
    RouteName.HomePage: (context) => const HomePage(),
    RouteName.StatsPage: (context) => const StatsPage(),
  };
}

class RouteName {
  static const String onBoardingPage = 'on_boarding_page';
  static const String HomePage = 'home_page';
  static const String StatsPage = 'stats_page';
}
