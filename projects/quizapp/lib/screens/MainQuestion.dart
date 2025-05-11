import 'package:flutter/material.dart';

class MainQuestionScreen extends StatefulWidget {
  final String category;
  const MainQuestionScreen({super.key, required this.category});
  @override
  State<MainQuestionScreen> createState() => _MainQuestionScreenState();
}

class _MainQuestionScreenState extends State<MainQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.category);
  }
}
