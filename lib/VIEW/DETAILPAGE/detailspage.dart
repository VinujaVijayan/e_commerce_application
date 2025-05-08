import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/MODEL/products.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/control/details_control.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/Details_appbar.dart';



import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/addto_cart.dart';

import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/animated_dot.dart';

import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/color_details.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/description_each.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/image_slider.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/widgets/product_maindetail.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailsscreen extends StatelessWidget {
  final Products producteach;

  const Detailsscreen({super.key, required this.producteach});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Acolor.kcontentcolor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //appbar
                Detailsappbar (product: producteach),
                Consumer<DetailsController>(
                  builder: (context, controller, _) {
                    return Column(
                      children: [
                        //slider
                        MyImageSlider(
                          image: producteach.image,
                          onchange: (index) {
                            controller.updateCurrentImage(index);
                          },
                        ),
                        const SizedBox(height: 10),
                        //animated button
                        MyImageSlideranimated(
                          currentImage: controller.currentImage,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Productmaindetail(
                        title: producteach.title,
                        price: '\$${producteach.price.toString()}',
                        rate: producteach.rate.toString(),
                        review: producteach.review,
                        seller: producteach.seller,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Color',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Colorshadedetail(producteach: producteach),
                      const SizedBox(height: 20),
                      DescriptionEach(descriptrion: producteach.description),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Addtocart(producteach: producteach),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    
  }
}
