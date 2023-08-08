import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {

  final String pizzaFlavor;
  final String pizzaPrice;
  final pizzaColor;
  final String pizzaImageName;

  const PizzaTile({super.key, 
   required this.pizzaFlavor, 
   required this.pizzaPrice, 
   this.pizzaColor, 
   required this.pizzaImageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: pizzaColor[200],
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(12) ,
                        topRight: Radius.circular(12),
                         ),
                        ),
                    padding: EdgeInsets.all(12),
                    child: Text('\$'+ pizzaPrice,
                    style: TextStyle(color: pizzaColor[800] , 
                    fontWeight: FontWeight.bold,
                    fontSize: 18,),
                    ),
                    ),
                    
              ],
            ),

            //pictures
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0 , 
                vertical: 16.0),
              child: Image.asset(pizzaImageName),
            ),
            
            // flavor
            Text(pizzaFlavor , 
            style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 16,

                ),
              ),

              const SizedBox(
                height: 4,
              ),
              Text("Falcone&Family" ,
              style: TextStyle(color: Colors.grey[600],),
              ),

              
            //love icon+add button

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,
                  color: Colors.pink[400],
                  ),
                  Icon(Icons.add,
                  color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}