// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft/core/resources/color_manager.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/core/resources/string_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.64, -0.76),
              end: Alignment(-0.64, 0.76),
              colors: [
            ColorManager.KColorPurple,
            ColorManager.KColorPurpleLight
          ])),
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 40),
            child: Column(
              children: [
                Text(
                  StringManager.onBoardingTitle,
                  style: TextStyle(
                    color: ColorManager.KColorWhite,
                    fontSize: 36.04,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontManager.SfProDisplay,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                ClipRect(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
