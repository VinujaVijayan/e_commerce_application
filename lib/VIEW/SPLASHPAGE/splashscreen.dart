
import 'package:e_commerce_application/VIEW/NAVPAGE/mainpage.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              color: Colors.black,
              height: h * .79,
              width: w,
              child: Center(
                child: Text(
                  'Shoppie...',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
            )),
            Positioned(
                bottom: 0,
                child: Container(
                  height: h * .243,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: h * .032,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'New Fashion and Trends',
                          style: TextStyle(
                            fontSize: w * .06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: h * .01,
                        ),
                        Text(
                          'Checkout the app',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: h * .01,
                        ),
                        SizedBox(
                          width: w * .8,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => Navscreen(),));
                            },
                            child: Text(
                              'Shop Now',
                              style: TextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
