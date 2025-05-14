class QuizQuestions {
  //Variables
  final String category;
  final String text;
  List<String> answers;
  final String correctAnswer;
  //Constructor
  QuizQuestions({
    required this.category,
    required this.text,
    required this.answers,
    required this.correctAnswer,
  });
}
