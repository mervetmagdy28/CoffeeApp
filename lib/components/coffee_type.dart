import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({ required this.coffeeName, required this.isSelcted, required this.ontap}) ;
  final String coffeeName;
  final bool isSelcted;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(coffeeName, style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
            color: isSelcted? Colors.orange: Colors.white,
        ) ,),
      ),
    );
  }
}
