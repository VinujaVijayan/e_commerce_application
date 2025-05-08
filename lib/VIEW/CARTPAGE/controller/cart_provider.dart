import 'package:e_commerce_application/MODEL/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  int _currentindex = 1;
  int get currentIndex => _currentindex;

  final List<Products> _cart = [];
  List<Products> get cart => _cart;

  void toggleCart(Products product,int quantity) {
    if (_cart.contains(product)) {
      for (Products element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  void decrementQtn(int index) {
    if (_cart[index].quantity > 1) {
      _cart[index].quantity--;
      notifyListeners();
    }
  }

  void removeItem(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

 

  double totalPrice() {
    double total = 0.0;
    for (Products element in _cart) {
      total += element.price * element.quantity;
    }
    return total;
  }

  static CartProvider of(BuildContext context, {bool listen = false}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }

  //current index

  void incrementQtnindex(int index) {
    _currentindex++;
    notifyListeners();
  }

  void decrementQtnindex(int index) {
    if (currentIndex > 1) {
      _currentindex--;
      notifyListeners();
    }
  }

 void addToCart(Products product, int quantity) {
  // Simply add the product and set the quantity directly
  product.quantity = quantity;
  _cart.add(product);

  notifyListeners();
}


}

