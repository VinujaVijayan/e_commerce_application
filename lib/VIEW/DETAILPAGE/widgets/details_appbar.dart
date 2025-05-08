import 'package:e_commerce_application/MODEL/products.dart';
import 'package:e_commerce_application/VIEW/FAVPAGE/CONTROLLER/fav_control.dart';
import 'package:flutter/material.dart';

class Detailsappbar extends StatelessWidget {
  final Products product;
  const Detailsappbar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
              //iconSize: 20
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
              //iconSize: 20
            ),
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
              //iconSize: 20
            ),
            onPressed: () {
              provider.toggleFavourite(product);
            },
            icon: Icon(
              provider.isExist(product)?
              Icons.favorite:
              Icons.favorite_border_outlined,color: Colors.black,size: 25),
          )
        ],
      ),
    );
  }
}
