// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/core/resources/route_manager.dart';
import 'package:mini_nft/features/home/home_content.dart';
import 'package:mini_nft/features/home/models/lists.dart';
import 'package:mini_nft/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_nft/features/home/widgets/custom_navigation_bar.dart';
import 'package:mini_nft/features/onBoarding/on_boarding_page.dart';
import 'package:mini_nft/features/stats/stats_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  String title = '';

  List<Widget> w = [homeContent(), StatsPage(), OnBoardingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      bottomNavigationBar: CustomNavigationBar(
        onPressedHome: () {
          index = 0;
          setState(() {
            print('this is home page');
          });
        },
        onPressedStats: () {
          index = 1;
          setState(() {
            print('this is stats page');
          });
        },
      ),
      appBar: index == 0
          ? AppBar(
              backgroundColor: Color(0xff211134),
              title: Text('NFT Marketplace',
                  style: TextStyle(
                      fontFamily: FontManager.SfProDisplay,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            )
          : index == 1
              ? AppBar(
                  backgroundColor: Color(0xff211134),
                  title: Text('State',
                      style: TextStyle(
                          fontFamily: FontManager.SfProDisplay,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.more_horiz_rounded),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                )
              : AppBar(
                  title: Text('State',
                      style: TextStyle(
                          fontFamily: FontManager.SfProDisplay,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                ),
      backgroundColor: Color(0xff211134),
      body: w[index],
    );
  }
}
