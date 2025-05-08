import 'package:flutter/material.dart';

class MyImageSlideranimated extends StatelessWidget {
  const MyImageSlideranimated({
    super.key,
    required this.currentImage,
  });

  final int currentImage;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
    bottom: 10,
      child: Align(
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: Duration(microseconds: 30),
          width: currentImage == index ? 15 : 8,
          height: 8,
          margin: EdgeInsets.only(right: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentImage==index?Colors.black:Colors.transparent,
            border: Border.all(color: Colors.black)
          ),
        ),
      ),
    ),
            ));
  }
}

