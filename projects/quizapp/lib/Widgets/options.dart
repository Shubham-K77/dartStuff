//Import
import 'package:flutter/material.dart';

//Stateless Class
class OptionsCard extends StatelessWidget {
  //Variables
  final Color bgColor;
  final String iconPath;
  final String title;

  const OptionsCard({
    super.key,
    required this.bgColor,
    required this.iconPath,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2.0,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 35, width: 35),
          Text(title, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
