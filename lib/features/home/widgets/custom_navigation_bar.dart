// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:mini_nft/core/resources/route_manager.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
    required this.onPressedHome,
    required this.onPressedStats,
  }) : super(key: key);

  final VoidCallback onPressedHome;
  final VoidCallback onPressedStats;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RouteName.onBoardingPage);
                          },
                          icon:
                              Icon(Icons.home, color: Colors.white, size: 30)),
                      IconButton(
                          onPressed: onPressedHome,
                          icon: Icon(Icons.stacked_bar_chart,
                              color: Colors.white, size: 30)),
                      IconButton(
                          onPressed: onPressedStats,
                          icon: Icon(Icons.search,
                              color: Colors.white, size: 30)),
                      Icon(Icons.person, color: Colors.white, size: 30),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: 0,
            child: Column(
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: ShapeDecoration(
                      shape: StarBorder.polygon(
                        sides: 6,
                        pointRounding: 0.2,
                      ),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Icon(Icons.add, color: Colors.black, size: 30)),
                SizedBox(width: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
