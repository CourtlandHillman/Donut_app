import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    // [donuts Flavor , donuts Price , donut color , image ],

    ["Ice Cream", "2.50", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "3.50", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape ", "3.00", Colors.deepPurple, "lib/images/grape_donut.png"],
    ["Choco", "2.50", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12.00),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.5,
          ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],

          );
      },
    );
  }
}
