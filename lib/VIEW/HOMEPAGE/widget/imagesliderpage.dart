import 'package:flutter/material.dart';

class Imageslider extends StatelessWidget {
  final Function(int) onchange;
  final int currentslider;

  const Imageslider(
      {super.key, required this.currentslider, required this.onchange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onchange,
              physics: ClampingScrollPhysics(),
              children: [
               
                Image.network(
                    'https://cdn.shopify.com/s/files/1/0817/7988/4088/articles/fashion-ecommerce.jpg?v=1738095976',
                    fit: BoxFit.cover),
              ],
            ),
          ),
        ),

        //0...
        Positioned.fill(
          bottom: 10,
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => AnimatedContainer(
                duration: Duration(microseconds: 30),
                width: currentslider == index ? 15 : 8,
                height: 8,
                margin: EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentslider==index?Colors.black:Colors.transparent,
                  border: Border.all(color: Colors.black)
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
