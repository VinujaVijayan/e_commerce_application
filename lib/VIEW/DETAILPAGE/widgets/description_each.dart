import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:flutter/material.dart';

class DescriptionEach extends StatelessWidget {
  final String descriptrion;
  const DescriptionEach({super.key, required this.descriptrion});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: Acolor.kprimarycolor,
                borderRadius: BorderRadius.circular(20)
              ),
              alignment: Alignment.center,
              child: Text('Description',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16
              ),),

            ),
            Text('Specifications',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16
              ),),
              Text('Reviews',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16
              ),),
          ],
        ),
        SizedBox(height: 20),
        Text(descriptrion,style: TextStyle(
          fontSize: 16,
          color: Colors.grey
        ),)
      ],
    );
  }
}