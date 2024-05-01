// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft/core/resources/color_manager.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/core/resources/route_manager.dart';
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
                      child: Column(children: [
                        Spacer(flex: 1),
                        Text(
                          'Explore and Mint NFTs',
                          style: TextStyle(
                            color: ColorManager.KColorWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontManager.SfProDisplay,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'You can buy and sell the NFTs of the best\nartisits in the world.',
                          style: TextStyle(
                            color: Color(0xffEBEBF5).withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: FontManager.SfProDisplay,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                            color: Color(0xff97A9F6),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      RouteName.HomePage, (route) => true);
                                },
                                child: Text(
                                  'Get Started Now',
                                ),
                                minWidth: 200,
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Spacer(flex: 1),
                      ])),
                ))
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
