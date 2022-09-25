import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/coffee_type.dart';
import '../components/coffee_unit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    [
      'Cappucion',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee for you

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Find the best\ncoffee for you",
                    style: GoogleFonts.bebasNeue(fontSize: 50)),
              ),
            ],
          ),
          SizedBox(height: 20),
          //search bar
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          //horizontal list view of coffee types
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                      coffeeName: coffeeType[index][0],
                      isSelcted: coffeeType[index][1],
                      ontap: () {
                        coffeeTypeSelected(index);
                      },
                  );
                },
            ),
          ),

          //horizontal list view of coffee units
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeUnit(imagePath: 'assets/pexels-chevanon-photography-312418.jpg', imageName: 'Latte', imageCaption: 'With Almond Milk', imagePrice: '\$4.00',),
                CoffeeUnit(imagePath: 'assets/pebaQjmmjyJSDHPkZKD2cCvk1kYWXGlPcswBmWb7.jpeg', imageName: 'Cappucion', imageCaption: 'Foom Coffee', imagePrice: '\$4.50',),
                CoffeeUnit(imagePath: 'assets/1648675206726.jpeg', imageName: 'Black', imageCaption: 'Black Coffee', imagePrice: '\$3.50',),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
