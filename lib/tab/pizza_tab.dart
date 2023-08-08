import 'package:donut_app/util/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  


List pizzaOnSale = [
    // [donuts Flavor , donuts Price , donut color , image ],

    ["Cheezy", "7.50", Colors.yellow, "lib/images/pizza_cheez.png"],
    ["Classic", "6.50", Colors.brown, "lib/images/pizza_classic.png"],
    ["Tomato ", "8.00", Colors.red, "lib/images/pizza_tomato.png"],
    ["Vegan", "5.50", Colors.green, "lib/images/pizza_tomato.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12.00),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.5,
          ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          pizzaImageName: pizzaOnSale[index][3],

          );
      },
    );
  }
}