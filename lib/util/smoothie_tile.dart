import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
 final String smoothieFlavor;
  final String smoothiePrice;
  final smoothieColor;
  final String smoothieImageName;

  const SmoothieTile({super.key, 
  required this.smoothieFlavor, 
  required this.smoothiePrice, 
  required this.smoothieColor, 
  required this.smoothieImageName,
  });

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[100],
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
                        color: smoothieColor[200],
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(12) ,
                        topRight: Radius.circular(12),
                         ),
                        ),
                    padding: EdgeInsets.all(12),
                    child: Text('\$'+ smoothiePrice,
                    style: TextStyle(color: smoothieColor[800] , 
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
              child: Image.asset(smoothieImageName),
            ),
            
            // flavor
            Text(smoothieFlavor , 
            style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 16,

                ),
              ),

              const SizedBox(
                height: 4,
              ),
              Text("Fresh&Co." ,
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
