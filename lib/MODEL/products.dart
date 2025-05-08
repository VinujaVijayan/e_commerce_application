import 'package:flutter/material.dart';

class Products {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Products(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Products> products = [
  Products(
      title: 'Denim Jacket',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      image:'assets/productimage/image1.png',
          //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxbvE-6PANu-oxWs2GKOukMJhfNT_8Gfbufw&s',
      review: "(320 Reviews)",
      seller: 'Tania',
      price: 2000,
      colors: [Colors.black, Colors.blue, Colors.grey,Colors.red,Colors.white],
      category: "Jacket",
      rate: 4.0,
      quantity: 1),
  Products(
      title: 'Necklace',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      image: 'assets/productimage/image4.png',
      //'https://pngimg.com/d/necklace_PNG98.png',
      review:  "(460 Reviews)",
      seller: 'Sharath',
      price: 5000,
      colors: [
        const Color.fromARGB(255, 219, 203, 57),
        Colors.white,
        ],
      category: 'Jewellery',
      rate: 5.0,
      quantity: 1),
  Products(
      title: 'Shoes',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      image:'assets/productimage/image3.jpg',
          //'https://static.vecteezy.com/system/resources/previews/039/340/310/non_2x/ai-generated-blue-sneakers-isolated-on-transparent-background-fashionable-casual-shoes-for-shoe-shop-ad-design-generative-ai-png.png',
      review: "(330 Reviews)",
      seller: 'Monsiq',
      price: 1000,
      colors: [Colors.blue, Colors.red, Colors.green],
      category: 'Shoe',
      rate: 3.5,
      quantity: 1),
  Products(
      title: 'Leather Bag',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      image: 'assets/productimage/image2.png',
      //'https://pngimg.com/d/women_bag_PNG6405.png',
      review: "(450 Reviews)",
      seller: 'Thara',
      price: 4500,
      colors: [Colors.grey, Colors.red],
      category: 'Bag',
      rate: 4.5,
      quantity: 1)
];
