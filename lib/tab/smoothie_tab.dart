import 'package:flutter/material.dart';

import '../util/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  
 List burgerOnSale = [
    // [donuts Flavor , donuts Price , donut color , image ],

    ["Carrot", "2.50", Colors.orange, "lib/images/carrot.png"],
    ["Apple", "1.50", Colors.red, "lib/images/apple.png"],
    ["Grapefruit ", "2.00", Colors.purple, "lib/images/grapefruit.png"],
    ["Strawberry", "2.50", Colors.pink, "lib/images/strawberry.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(12.00),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.5,
          ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: burgerOnSale[index][0],
          smoothiePrice: burgerOnSale[index][1],
          smoothieColor: burgerOnSale[index][2],
          smoothieImageName: burgerOnSale[index][3],

          );
      },
    );
  }
}