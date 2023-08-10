import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  // list item's
  final List _shopItems = [
    //[itemName , itemPrice , itemPath , color]

    ["BigBoy", "4.50", Colors.brown, "lib/images/burger_bigboy.png"],
    ["Chicken", "3.50", Colors.orange, "lib/images/burger_chicken.png"],
    ["Classic ", "4.00", Colors.red, "lib/images/burger_classic.png"],
    ["Cheezy", "4.50", Colors.yellow, "lib/images/burger_chees.png"],
    ["Ice Cream", "2.50", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "3.50", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape ", "3.00", Colors.deepPurple, "lib/images/grape_donut.png"],
    ["Choco", "2.50", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Classic", "4.50", Colors.brown, "lib/images/pancake.png"],
    ["Cream", "3.50", Colors.pink, "lib/images/pancake_cream.png"],
    ["Honey ", "4.00", Colors.yellow, "lib/images/pancake_honey.png"],
    ["Berrys", "4.50", Colors.purple, "lib/images/pancake_berrys.png"],
    ["Cheezy", "7.50", Colors.yellow, "lib/images/pizza_cheez.png"],
    ["Classic", "6.50", Colors.brown, "lib/images/pizza_classic.png"],
    ["Tomato ", "8.00", Colors.red, "lib/images/pizza_tomato.png"],
    ["Vegan", "5.50", Colors.green, "lib/images/pizza_tomato.png"],
    ["Carrot", "2.50", Colors.orange, "lib/images/carrot.png"],
    ["Apple", "1.50", Colors.red, "lib/images/apple.png"],
    ["Grapefruit ", "2.00", Colors.purple, "lib/images/grapefruit.png"],
    ["Strawberry", "2.50", Colors.pink, "lib/images/strawberry.png"],    
  ];

  List _cartItem = [];

  get shopItems => _shopItems;

  get cartItem => _cartItem;

  //add item to cart
  void addItemToCart(int index) {
    _cartItem.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }
  //calculate total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItem.length; i++) {
      totalPrice += double.parse(_cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
