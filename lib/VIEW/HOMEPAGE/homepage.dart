import 'package:e_commerce_application/MODEL/products.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/controller/homepage_control.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/widget/appbar.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/widget/categorylistpage.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/widget/imagesliderpage.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/widget/refracting_widget/productcartpage.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/widget/searchbarpage.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),

              // Custom AppBar
              const Customappbar(),
              const SizedBox(height: 20),

              // Search Bar
              const Searchbar(),
              const SizedBox(height: 20),

              // Categories
              const Categorylist(),
              const SizedBox(height: 20),

              // Image Slider
              Imageslider(
                currentslider: sliderProvider.currentSlide,
                onchange: (index) => sliderProvider.changeSlide(index),
              ),

              const SizedBox(height: 20),

              // Category Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Special for You',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Products Grid
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Productcard(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
