//Imports:
import 'package:expense_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';

//Main Function:
void main() {
  runApp(const myApp());
}

//Bulding The Material Widget:
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "Mudra Expense Tracker",
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    ));
  }
}
