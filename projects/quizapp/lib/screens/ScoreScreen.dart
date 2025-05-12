//Import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/Quiz.dart';

//Stateless Widget
class ScoreScreen extends StatelessWidget {
  final List selectedAnswers;
  final List correctAnswers;
  final List questions;
  //Constructor
  const ScoreScreen({
    super.key,
    required this.selectedAnswers,
    required this.correctAnswers,
    required this.questions,
  });
  //Answer Check Logic:
  int getScore() {
    int score = 0;
    for (int i = 0; i < selectedAnswers.length; i++) {
      final selected = selectedAnswers[i].toString().trim().toLowerCase();
      final correct = correctAnswers[i].toString().trim().toLowerCase();
      if (selected == correct) {
        score++;
      }
    }
    return score;
  }

  //Build Method:
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Text(
                  'You have answered ${getScore()} of ${correctAnswers.length} questions correctly!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: Color(0xFF63412E),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Text(
                  'List of answers and questions: ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.anaheim(
                    color: Color(0xFF63412E),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < questions.length; i++)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'Question: ${questions[i]}',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xFF63412E),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'Selected Answer: ${selectedAnswers[i]}',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'Correct Answer: ${correctAnswers[i]}',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
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
                  width: 150,
                  height: 45,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF63412E),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 1.25,
                        blurRadius: 1.5,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.restart_alt, color: Colors.white),
                      Text(
                        'Restart Quiz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
