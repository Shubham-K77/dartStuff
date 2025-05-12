import 'package:flutter/material.dart';
import 'package:quizapp/Widgets/optionButton.dart';
import 'package:quizapp/data/questions.dart';

class MainQuestionScreen extends StatefulWidget {
  final String category;
  const MainQuestionScreen({super.key, required this.category});
  @override
  State<MainQuestionScreen> createState() => _MainQuestionScreenState();
}

class _MainQuestionScreenState extends State<MainQuestionScreen> {
  //State Variable:
  var currentQuestionsIndex = 0;
  //Logic To Iterate Into Next Question:
  
  //Function To Fetch The Correct Questions According To Category
  var currentQuestions = [];
  void updatedQuestions() {
    if (widget.category == "Science") {
      currentQuestions = scienceQuestions;
    } else if (widget.category == "Technology") {
      currentQuestions = technologyQuestions;
    } else if (widget.category == "Geography") {
      currentQuestions = geographyQuestions;
    } else if (widget.category == "Math") {
      currentQuestions = mathQuestions;
    } else {
      currentQuestions = historyQuestions;
    }
  }

  //Call the function at the begining of the widget creation
  @override
  void initState() {
    super.initState();
    updatedQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Text(
                  currentQuestions[1].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF63412E),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ...currentQuestions[1].answers.map((item) {
                return OptionButton(optionText: item, onTap: () {});
              }),
            ],
          ),
        ),
      ),
    );
  }
}
