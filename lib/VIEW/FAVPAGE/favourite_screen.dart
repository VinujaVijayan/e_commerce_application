import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/VIEW/FAVPAGE/CONTROLLER/fav_control.dart';
import 'package:e_commerce_application/VIEW/NAVPAGE/mainpage.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Acolor.kcontentcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navscreen()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Favourites',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<FavouriteProvider>(
          builder: (context, favouriteProvider, child) {
            final favouriteList = favouriteProvider.favourites;

            if (favouriteList.isEmpty) {
              return const Center(
                child: Text(
                  'No favorites added!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: favouriteList.length,
                itemBuilder: (context, index) {
                  final favItem = favouriteList[index];

                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Acolor.kcontentcolor,
                                ),
                                padding: const EdgeInsets.all(20),
                                child: Image.asset(favItem.image),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favItem.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    favItem.category,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    '\$${favItem.price}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          right: 35,
                          child: IconButton(
                            onPressed: () {
                              favouriteProvider.toggleFavourite(favItem);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
