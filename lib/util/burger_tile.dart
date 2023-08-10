import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final burgerColor;
  final String burgerImageName;

  const BurgerTile({super.key, 
  required this.burgerFlavor, 
  required this.burgerPrice, 
  required this.burgerColor, 
  required this.burgerImageName
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[100],
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
                        color: burgerColor[200],
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(12) ,
                        topRight: Radius.circular(12),
                         ),
                        ),
                    padding: EdgeInsets.all(12),
                    child: Text('\$'+ burgerPrice,
                    style: TextStyle(color: burgerColor[800] , 
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
              child: Image.asset(burgerImageName),
            ),
            
            // flavor
            Text(burgerFlavor , 
            style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 16,

                ),
              ),

              const SizedBox(
                height: 4,
              ),
              Text("BurgerKing" ,
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
