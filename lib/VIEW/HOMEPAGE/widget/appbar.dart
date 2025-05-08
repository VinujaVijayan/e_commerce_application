import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: Acolor.kcontentcolor, iconSize: 20),
          onPressed: () {},
          icon: Icon(Icons.category_rounded),
        ),
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: Acolor.kcontentcolor, iconSize: 20),
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
