import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Widgets/optionButton.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/screens/ScoreScreen.dart';
import 'dart:async';

class MainQuestionScreen extends StatefulWidget {
  final String category;
  const MainQuestionScreen({super.key, required this.category});
  @override
  State<MainQuestionScreen> createState() => _MainQuestionScreenState();
}

class _MainQuestionScreenState extends State<MainQuestionScreen> {
  //State Variable:
  var currentQuestionsIndex = 0;
  var selectedAnswers = [];
  var correctAnswers = [];
  var questions = [];
  late Timer _timer;
  int _start = 30;
  //Logic to start the timer:
  void startTimer() {
    _start = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
        answerQuestion("Out of Time!");
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  // Cancel timer when user answers
  void stopTimer() {
    _timer.cancel();
  }

  //Logic To Iterate Into Next Question:
  void answerQuestion(answer) {
    stopTimer();
    selectedAnswers.add(answer);
    correctAnswers.add(currentQuestions[currentQuestionsIndex].correctAnswer);
    questions.add(currentQuestions[currentQuestionsIndex].text);
    if (currentQuestionsIndex < currentQuestions.length - 1) {
      setState(() {
        currentQuestionsIndex++;
      });
      startTimer();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => ScoreScreen(
                selectedAnswers: selectedAnswers,
                correctAnswers: correctAnswers,
                questions: questions,
              ),
        ),
      );
    }
  }

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
    startTimer(); //Intial Timer Start
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
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
                  "Time Left: $_start s",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Text(
                  currentQuestions[currentQuestionsIndex].text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Color(0xFF63412E),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...currentQuestions[currentQuestionsIndex].answers.map((item) {
                return OptionButton(
                  optionText: item,
                  onTap: () => answerQuestion(item),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
