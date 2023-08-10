import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'burger_tile.dart';
import 'card_models.dart';

class AddingCard extends StatelessWidget {
  const AddingCard({super.key});

void name(params) {
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return BurgerTile(
                      burgerFlavor: value.shopItems[index][0],
                      burgerPrice: value.shopItems[index][1],
                      burgerColor: value.shopItems[index][2],
                      burgerImageName: value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                    );
                  },
                );
              },
             ),
            ),
    );
  }
}