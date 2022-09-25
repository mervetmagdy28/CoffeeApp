import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../pages/coffee_profile.dart';

class CoffeeUnit extends StatelessWidget {
  const CoffeeUnit({Key? key, required this.imagePath, required this.imageName, required this.imageCaption, required this.imagePrice}) : super(key: key);
  final String imagePath;
  final String imageName;
  final String imageCaption;
  final String imagePrice;
   @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
                child:
                Image.asset(imagePath,),
              borderRadius: BorderRadius.circular(12),

            ),
            //Text
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(imageName, style: TextStyle(
                     fontSize: 20
                 ),),
                 //caption
                 SizedBox(height: 4,),
                 Text(imageCaption, style: TextStyle(
                   color: Colors.grey[700],
                 ),)
               ],
             ),
           ),
            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(imagePrice,style: TextStyle(fontSize: 16),),

                  ElevatedButton(

                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.orange) ,
                          shape: MaterialStateProperty.all(

                              const RoundedRectangleBorder(
                                  borderRadius:BorderRadius.all(Radius.circular(6))
                              )
                          ) ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CoffeeProfile()));

                      },
                      child: Icon(
                        Icons.add
                      )
                  ),


                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
