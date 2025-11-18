import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "assets/images/avocado.jpeg", Colors.green],
    ["Banana", "2.50", "assets/images/banana.jpeg", Colors.yellow],
    ["Chicken", "13.50", "assets/images/chicken.jpeg", Colors.brown],
    ["French Fries", "8.00", "assets/images/french_fries.jpeg", Colors.yellow],
    ["Fried Fish", "20.00", "assets/images/fried_fish.jpeg", Colors.orange],
    ["Ugali", "1.50", "assets/images/ugali.jpeg", Colors.brown],
    ["Bottled Water", "4.50", "assets/images/water.jpeg", Colors.blue],
    ["Wet Fried Fish ", "15.50", "assets/images/wet_fried_fish.jpeg", Colors.orange],
  ];

  // List of cart items
  List _CartItems = [];

  get shopItems => _shopItems;

  get cartItems => _CartItems;

  // Add item to cart
  void addItemToCart(int index) {
    _CartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _CartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double total = 0;

    for (int i = 0; i < _CartItems.length; i++) {
      total += double.parse(_CartItems[i][1]);
    }

    return total.toStringAsFixed(2);
  }
}