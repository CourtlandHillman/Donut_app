import 'package:donut_app/util/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {


List burgerOnSale = [
    // [donuts Flavor , donuts Price , donut color , image ],

    ["BigBoy", "4.50", Colors.brown, "lib/images/burger_bigboy.png"],
    ["Chicken", "3.50", Colors.orange, "lib/images/burger_chicken.png"],
    ["Classic ", "4.00", Colors.red, "lib/images/burger_classic.png"],
    ["Cheezy", "4.50", Colors.yellow, "lib/images/burger_chees.png"],
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
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          burgerImageName: burgerOnSale[index][3],

          );
      },
    );
  }
}
