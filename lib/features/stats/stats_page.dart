// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft/core/resources/color_manager.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/core/resources/route_manager.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.bar_chart, color: Colors.grey),
                              SizedBox(width: 10),
                              Text(
                                'Ranking',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 3.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Color(0xff97A9F6),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff97A9F6),
                                  offset: Offset(0, -5),
                                  spreadRadius: 1,
                                  blurRadius: 30,
                                )
                              ]),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.alternate_email_sharp,
                                  color: Colors.grey),
                              SizedBox(width: 10),
                              Text(
                                'Activity',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 3.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Color(0xff97A9F6),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff97A9F6),
                                  offset: Offset(0, -5),
                                  spreadRadius: 1,
                                  blurRadius: 30,
                                )
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                  height: 2,
                  thickness: 5 / 10,
                )
              ],
            ))));
  }
}
