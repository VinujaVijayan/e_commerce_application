import 'package:e_commerce_application/MODEL/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<Products> _favourites = [];
  List<Products> get favourites => _favourites;

  void toggleFavourite(Products product) {
    if (_favourites.contains(product)) {
      _favourites.remove(product);
    } else {
      _favourites.add(product);
    }
    
    
    print('Favorites list: $_favourites');
    notifyListeners();
  }


   bool isExist(Products product) {
    final isExist = _favourites.contains(product);
    return isExist;
    
  }

  static FavouriteProvider of(BuildContext context, {bool listen = true,
  }) {
    return Provider.of<FavouriteProvider>(context, listen: listen);
  }
}
