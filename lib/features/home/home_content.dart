import 'package:flutter/material.dart';
import 'package:mini_nft/core/resources/font_manager.dart';
import 'package:mini_nft/features/home/models/lists.dart';
import 'package:mini_nft/features/home/widgets/custom_category_home_page.dart';

class homeContent extends StatelessWidget {
  const homeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
