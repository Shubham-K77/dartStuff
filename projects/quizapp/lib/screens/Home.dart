import 'package:flutter/material.dart';
import 'package:quizapp/screens/Quiz.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFFF2EBDB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/originalLogo.png', width: 200),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "Bodha: Discover the Joy of Knowing More",
                style: TextStyle(
                  color: Color(0xFF63412E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 180,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFF2EBDB),
                  border: Border.all(color: Color(0xFF63412E)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.arrow_right_alt,
                      color: Color(0xFF63412E),
                      size: 30,
                    ),
                    Text(
                      "Start Quiz",
                      style: TextStyle(
                        color: Color(0xFF63412E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
