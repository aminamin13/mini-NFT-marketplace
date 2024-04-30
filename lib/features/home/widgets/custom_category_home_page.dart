// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:mini_nft/core/resources/font_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;
  @override
  Widget build(Object context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(27.3),
        child: Image(
            image: AssetImage(image),
            width: 252,
            height: 167),
      ),
      Positioned(
        bottom: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(27.3),
            bottomRight: Radius.circular(27.3),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff000000).withOpacity(0.2),
                  Color(0xff000000)
                ])),
            width: 252,
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: FontManager.SfProDisplay,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}



class CustomCollectionHomePage extends StatelessWidget {
  const CustomCollectionHomePage({
    Key? key,
    required this.title,
    required this.likes,
    required this.image,
  }) : super(key: key);

  final String title;
  final int likes;
  final String image;

  @override
  Widget build(BuildContext context) {
    return           Stack(
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                      width: 175,
                      height: 195,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(.2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(image),
                              width: 139,
                              height: 139,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(title,
                                  style: TextStyle(
                                      fontFamily: FontManager.SfProDisplay,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.8))),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(Icons.favorite, color: Colors.red),
                                  Text(likes.toString(),
                                      style: TextStyle(
                                          fontFamily: FontManager.SfProDisplay,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                ],
                              ),
                            ],
                          ),
                          Spacer(flex: 1)
                        ]),
                      )),
                ),
              ),
            ],
          );
  }
}
