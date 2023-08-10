import 'package:donut_app/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tab/burget_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import 'card_page.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//my tabs
  List<Widget> myTabs = [

//donut tab
MyTab(
  iconPath: 'lib/icons/donut.png',
  ),


//burger tab
MyTab(
  iconPath: 'lib/icons/burger.png',
  ),

//smoothie tab
MyTab(
  iconPath: 'lib/icons/smoothie.png',
  ),

//pancake tab
MyTab(
  iconPath: 'lib/icons/pancakes.png',
  ),

//pizza tab
MyTab(
  iconPath: 'lib/icons/pizza.png',
  ),


  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(




      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body:  Column(
          children: [
            //Text I wanna eat

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 36.0),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // tab bar

           TabBar(tabs: myTabs),


            // tab bar view
            Expanded(child: 
            TabBarView(
              children: [
               // donut page
                
               DonutTab(),


               //burger  page 
               BurgerTab(),

               //smoothie page
               SmoothieTab(),


               //pancake page 
               PancakeTab(),


               //pizza page
               PizzaTab(),

                ],
               ),
              ),

              
          ],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return CartPage();
          }),
        ),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),

          
      ),
    );
  }
}
