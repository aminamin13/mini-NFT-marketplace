// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft/core/resources/color_manager.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/features/home/models/category_data.dart';
import 'package:mini_nft/features/home/models/collection_data.dart';
import 'package:mini_nft/features/home/models/lists.dart';
import 'package:mini_nft/features/home/widgets/custom_category_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
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
        ],
      ),
    );
  }
}
