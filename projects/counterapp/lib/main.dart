//Import
import 'package:flutter/material.dart';

//Main App
void main() {
  runApp(MyApp());
}

//Stateful Class
class MyApp extends StatefulWidget {
  //Constructor
  const MyApp({super.key});
  //Return The State
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Counter
  int count = 0;
  //Build Method
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            "Counter App",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                'You have pressed the button this many times: ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                '$count',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
