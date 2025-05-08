import 'package:e_commerce_application/MODEL/products.dart';
import 'package:flutter/material.dart';

class Colorshadedetail extends StatelessWidget {
  final Products producteach;
  const Colorshadedetail({super.key, required this.producteach});

  @override
  Widget build(BuildContext context) {
    int currentColor = 1;
    return Row(
      children: List.generate(
          producteach.colors.length,
          (index) => GestureDetector(
                onTap: () {
                  currentColor = index;
                },
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 300,
                  ),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentColor == index
                        ? Colors.white
                        : producteach.colors[index],
                    border: currentColor == index
                        ? Border.all(color: producteach.colors[index])
                        : null,
                  ),
                  padding: currentColor == index ? EdgeInsets.all(2) : null,
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: producteach.colors[index],
                        shape: BoxShape.circle),
                  ),
                ),
              )),
    );
  }
}
