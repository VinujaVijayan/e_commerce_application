import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/MODEL/products.dart';
import 'package:e_commerce_application/VIEW/CARTPAGE/controller/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Addtocart extends StatelessWidget {
  final Products producteach;
  const Addtocart({super.key, required this.producteach});

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        padding: EdgeInsets.symmetric(),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Consumer<CartProvider>(
              builder: (BuildContext context, cart, Widget? child) {
                return Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        // Decreasing quantity
                        onPressed: () {
                          if (cart.currentIndex > 1) {
                            cart.decrementQtnindex(0);
                            //cart.decrementQtn(0);
                          }
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        cart.currentIndex.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      IconButton(
                        // Increasing quantity
                        onPressed: () {
                          cart.incrementQtnindex(0); 
                          //cart.decrementQtn(0);
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                // Adding item into the cart
               final provider = CartProvider.of(context);
               provider.addToCart(producteach, provider.currentIndex);

                final snackBar = SnackBar(
                  content: Text(
                    'Successfully added to the cart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Acolor.kprimarycolor),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
