import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final pancakeColor;
  final String pancakeImageName;

  const PancakeTile({super.key, 
  required this.pancakeFlavor, 
  required this.pancakePrice, 
  required this.pancakeColor, 
  required this.pancakeImageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[100],
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
                        color: pancakeColor[200],
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(12) ,
                        topRight: Radius.circular(12),
                         ),
                        ),
                    padding: EdgeInsets.all(12),
                    child: Text('\$'+ pancakePrice,
                    style: TextStyle(color: pancakeColor[800] , 
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
              child: Image.asset(pancakeImageName),
            ),
            
            // flavor
            Text(pancakeFlavor , 
            style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 16,

                ),
              ),

              const SizedBox(
                height: 4,
              ),
              Text("Denny's" ,
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
