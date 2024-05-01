import 'package:flutter/material.dart';
import 'package:mini_nft/core/resources/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteManager.routes,
      initialRoute: RouteName.onBoardingPage,
    );
  }
}
