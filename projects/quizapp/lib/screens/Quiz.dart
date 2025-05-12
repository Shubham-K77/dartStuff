//Import
import 'package:flutter/material.dart';
import 'package:quizapp/Widgets/options.dart';
import 'package:quizapp/screens/MainQuestion.dart';

//Stateful Widget
class QuizScreen extends StatefulWidget {
  //Constructor
  const QuizScreen({super.key});
  //State Creation
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //State for category
  String category = "";
  //Build Method
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF63412E),
          centerTitle: true,
          title: Text(
            "Bodha Quiz App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 8.0,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    category = "History";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MainQuestionScreen(category: category),
                    ),
                  );
                },
                child: OptionsCard(
                  bgColor: Color(0xFFFFE066),
                  iconPath: "assets/icons/history.png",
                  title: "History",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    category = "Technology";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MainQuestionScreen(category: category),
                    ),
                  );
                },
                child: OptionsCard(
                  bgColor: Color(0xFFFFB347),
                  iconPath: "assets/icons/technology.png",
                  title: "Technology",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    category = "Math";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MainQuestionScreen(category: category),
                    ),
                  );
                },
                child: OptionsCard(
                  bgColor: Color(0xFFA0E7E5),
                  iconPath: "assets/icons/math.png",
                  title: "Math",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    category = "Science";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MainQuestionScreen(category: category),
                    ),
                  );
                },
                child: OptionsCard(
                  bgColor: Color(0xFFFFD6A5),
                  iconPath: "assets/icons/science.png",
                  title: "Science",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    category = "Geography";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MainQuestionScreen(category: category),
                    ),
                  );
                },
                child: OptionsCard(
                  bgColor: Color(0xFFFF6F61),
                  iconPath: "assets/icons/geography.png",
                  title: "Geography",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
