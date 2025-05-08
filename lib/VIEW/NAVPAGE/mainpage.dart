import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/VIEW/CARTPAGE/cart_screen.dart';
import 'package:e_commerce_application/VIEW/FAVPAGE/favourite_screen.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/homepage.dart';
import 'package:e_commerce_application/VIEW/NAVPAGE/control/mainpage_control.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navscreen extends StatelessWidget {
  const Navscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavProvider>(context);

    List<Widget> screens = [
      Scaffold(), // grid view
      CartScreen(),
      Homescreen(),
      FavouriteScreen(),
      Scaffold(), // profile
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => navProvider.goToHome(),
        shape: const CircleBorder(),
        backgroundColor: Acolor.kprimarycolor,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.white,
        height: 60,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navIcon(
              icon: Icons.grid_view_outlined,
              index: 0,
              currentIndex: navProvider.currentIndex,
              onTap: () => navProvider.changeIndex(0),
            ),
            navIcon(
              icon: Icons.shopping_cart,
              index: 1,
              currentIndex: navProvider.currentIndex,
              onTap: () => navProvider.changeIndex(1),
            ),
            navIcon(
              icon: Icons.favorite,
              index: 3,
              currentIndex: navProvider.currentIndex,
              onTap: () => navProvider.changeIndex(3),
            ),
            navIcon(
              icon: Icons.person_2,
              index: 4,
              currentIndex: navProvider.currentIndex,
              onTap: () => navProvider.changeIndex(4),
            ),
          ],
        ),
      ),
      body: screens[navProvider.currentIndex],
    );
  }

  Widget navIcon({
    required IconData icon,
    required int index,
    required int currentIndex,
    required VoidCallback onTap,
  }) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 25,
        color: currentIndex == index
            ? Acolor.kprimarycolor
            : Colors.grey.shade400,
      ),
    );
  }
}
