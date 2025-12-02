import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
    this.isCorrectAnswer,
    this.questionIndex, {
    super.key,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          width: 20,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isCorrectAnswer ? Colors.lightGreen : Colors.orangeAccent,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            questionNumber.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 65, 8, 8),
            ),
          ),
        ),
      ],
    );
  }
}
