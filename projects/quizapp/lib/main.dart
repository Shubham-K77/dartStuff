//Import
import 'package:flutter/material.dart';
import 'package:quizapp/screens/Home.dart';

//Material App Must Be Built In The Parent
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bodha Quiz APP",
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
