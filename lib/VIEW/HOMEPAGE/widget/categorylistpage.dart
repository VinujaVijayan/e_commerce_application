import 'package:e_commerce_application/MODEL/categories.dart';
import 'package:flutter/material.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(categories[index].image),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                categories[index].title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
