// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/features/home/models/lists.dart';
import 'package:mini_nft/features/home/widgets/custom_category_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      bottomNavigationBar: Container(
        height: 122,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.white.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.home, color: Colors.white, size: 30),
                        Icon(Icons.stacked_bar_chart,
                            color: Colors.white, size: 30),
                        Icon(Icons.search, color: Colors.white, size: 30),
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
      ),

      //  BottomNavigationBar(
      //     backgroundColor: Colors.white,
      //     onTap: (value) {
      //       setState(() {
      //         index = value;
      //       });
      //     },

      //     currentIndex: index,
      //     selectedItemColor: Colors.red,
      //     selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 20),
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      //     ]),
      appBar: AppBar(
        backgroundColor: Color(0xff211134),
        title: Text('NFT Marketplace',
            style: TextStyle(
                fontFamily: FontManager.SfProDisplay,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        centerTitle: true,
        leading: PopupMenuButton(
          icon: Icon(Icons.menu, color: Colors.white),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('Menu 1'),
              ),
              PopupMenuItem(
                child: Text('Menu 2'),
              ),
              PopupMenuItem(
                child: Text('Menu 3'),
              ),
            ];
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xff211134),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 167,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                      CustomCategoryHomePage(
                          title: Data.categoryData[index].title,
                          image: Data.categoryData[index].image),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(width: 10),
                  itemCount: Data.categoryData.length,
                ),
              ),
              SizedBox(height: 27),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('Trending Collections',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: FontManager.SfProDisplay,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                  height: 195,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCollectionHomePage(
                          title: Data.collectionData[index].title,
                          likes: Data.collectionData[index].likes,
                          image: Data.collectionData[index].image);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(width: 10),
                    itemCount: Data.collectionData.length,
                  )),
              SizedBox(height: 27),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('Top Sellers',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: FontManager.SfProDisplay,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                ),
              ),
              SizedBox(height: 27),
              SizedBox(
                  height: 195,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return TopSellerHomePage(
                          title: Data.topsellerdata[index].title,
                          likes: Data.topsellerdata[index].likes,
                          image: Data.topsellerdata[index].image);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(width: 10),
                    itemCount: Data.topsellerdata.length,
                  )),
              SizedBox(height: 27),
              SizedBox(
                  height: 195,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return TopSellerHomePage(
                          title: Data.topsellerdata[index].title,
                          likes: Data.topsellerdata[index].likes,
                          image: Data.topsellerdata[index].image);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(width: 10),
                    itemCount: Data.topsellerdata.length,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
