import 'package:e_commerce_application/VIEW/CARTPAGE/controller/cart_provider.dart';
import 'package:e_commerce_application/VIEW/DETAILPAGE/control/details_control.dart';
import 'package:e_commerce_application/VIEW/FAVPAGE/CONTROLLER/fav_control.dart';
import 'package:e_commerce_application/VIEW/HOMEPAGE/controller/homepage_control.dart';
import 'package:e_commerce_application/VIEW/NAVPAGE/control/mainpage_control.dart';
import 'package:e_commerce_application/VIEW/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
     
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavProvider()),
          ChangeNotifierProvider(create: (_) => SliderProvider()),
          ChangeNotifierProvider(create: (_)=>FavouriteProvider()),
          ChangeNotifierProvider(create: (_)=>CartProvider()),
          ChangeNotifierProvider(create: (_) => DetailsController()),
       ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splashscreen(),
        ),
      );
}
