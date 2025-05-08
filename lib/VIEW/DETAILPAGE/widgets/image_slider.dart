import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final String image;
  final Function(int) onchange;
  
  const MyImageSlider({super.key,  required this.image,required this.onchange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: 3,
        onPageChanged: onchange,
        itemBuilder: (context, index) {
        return Hero(
          tag: image,
          child: Image.asset(image));
      }),
    );
  }
}
