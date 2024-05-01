import 'package:mini_nft/features/home/models/category_data.dart';
import 'package:mini_nft/features/home/models/collection_data.dart';
import 'package:mini_nft/features/home/models/topSeller_data.dart';

class Data {
  static List<CategoryData> categoryData = [
    CategoryData(title: 'Art', image: 'assets/images/Art.png'),
    CategoryData(title: 'Music', image: 'assets/images/Music.png'),
    CategoryData(title: 'Virtual World', image: 'assets/images/Virtual.png'),
  ];

  static List<CollectionData> collectionData = [
    CollectionData(
        title: '3D Art', likes: 200, image: 'assets/images/img2.png'),
    CollectionData(
        title: 'Portrait Art', likes: 300, image: 'assets/images/img1.png'),
    CollectionData(
        title: 'Abstract Art', likes: 434, image: 'assets/images/img.png'),
  ];

  static List<TopSellerData> topsellerdata = [
    TopSellerData(
        title: '3D Artt', likes: 2020, image: 'assets/images/img1.png'),
    TopSellerData(title: 'nesw', likes: 300, image: 'assets/images/img.png'),
    TopSellerData(
        title: 'Abstract Art', likes: 434, image: 'assets/images/img1.png'),
  ];
}
