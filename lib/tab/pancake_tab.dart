import 'package:donut_app/util/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  
 List pancakeOnSale = [
    // [donuts Flavor , donuts Price , donut color , image ],

    ["Classic", "4.50", Colors.brown, "lib/images/pancake.png"],
    ["Cream", "3.50", Colors.pink, "lib/images/pancake_cream.png"],
    ["Honey ", "4.00", Colors.yellow, "lib/images/pancake_honey.png"],
    ["Berrys", "4.50", Colors.purple, "lib/images/pancake_berrys.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      padding: const EdgeInsets.all(12.00),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.5,
          ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          pancakeImageName: pancakeOnSale[index][3],

          );
      },
    );
  }
}
