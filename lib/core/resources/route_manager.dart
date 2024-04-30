import 'package:flutter/material.dart';
import 'package:mini_nft/features/onBoarding/on_boarding_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.onBoardingPage: (context) => const OnBoardingPage(),



  };
}

class RouteName{
  static const String onBoardingPage = 'on_boarding_page';
}
