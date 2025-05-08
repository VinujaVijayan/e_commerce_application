import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/MODEL/products.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/detailspage.dart';
import 'package:e_commerce_application/VIEW/FAVPAGE/CONTROLLER/fav_control.dart';
import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final Products product;
  const Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detailsscreen(producteach: product)));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Acolor.kcontentcolor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: 130,  // Fixed size to avoid overflow
                      height: 130, // Fixed size to avoid overflow
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Expanded(  // Wrap this in an Expanded widget to avoid overflow
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(product.colors.length, (index) {
                      return Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: product.colors[index],
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          // Cartpage-- Favourite
          Positioned(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40, // Reduced height to avoid overflow
                  decoration: BoxDecoration(
                    color: Acolor.kprimarycolor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      provider.toggleFavourite(product);
                    },
                    child: Icon(
                      provider.isExist(product)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
