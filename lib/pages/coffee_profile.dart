import 'package:flutter/material.dart';

class CoffeeProfile extends StatelessWidget {
  const CoffeeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Stack(
          children: [
            Container(
              child: Image.asset("assets/pexels-chevanon-photography-312418.jpg"),
              // height: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Latte",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "With Almond Milk",
                                  style: TextStyle(
                                    color: Colors.grey[100],
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Text("  4.5"),
                                    Text(
                                      " \(6.987\)",
                                      style: TextStyle(
                                          color: Colors.grey[300], fontSize: 8),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, bottom: 15, left: 90),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.coffee,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "Coffee",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.grey[500]),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.water_drop,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "Milk",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.grey[500]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Medium Roasted",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey[500]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                height: 167,
                width: 1000,
                decoration: BoxDecoration(
                    color: Color(0x68CEB8AB),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 516),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( bottom: 20, top: 30),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey[600]),
                            ),
                          ),
                          Text(
                            "A Latte often shortened to just latte in English, is a coffee beverage of Italian origin made with espresso and steamed milk. ",
                            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Size", style: TextStyle(
                                        fontSize:20,
                                        fontWeight: FontWeight.bold
                                        ,color: Colors.grey[600]


                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Center(
                                  child: Text("S",style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border:Border.all(color: Colors.orange) ,
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),

                              Container(
                                child: Center(
                                  child: Text("M",style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text("L",style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                      color: Colors.grey[900],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Text("Price", style: TextStyle(
                                      color: Colors.grey[800]
                                    ),),
                                    Text("\$4.50", style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[400]
                                    ),),
                                  ],
                                ),
                              ),
                              ElevatedButton(

                                  style: ButtonStyle(

                                      backgroundColor: MaterialStateProperty.all(Colors.orange) ,
                                      shape: MaterialStateProperty.all(

                                          const RoundedRectangleBorder(
                                              borderRadius:BorderRadius.all(Radius.circular(20))
                                          )
                                      ) ),
                                  onPressed: (){},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                                    child: Text("Buy Now", style: TextStyle(
                                color: Colors.white, fontSize: 20
                              ),),
                                  ) )
                            ],
                          )
                        ],
                      ),
                    ),
                    color: Colors.black,
                    height: 390,
                    width: 600,
                  ),

                ],
              ),
            ),

          ],
        ),
     ] ),
    );
  }
}
