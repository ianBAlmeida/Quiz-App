import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  //variável para o fluxo de guardar respostas
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var indexQuestions = 0;

  void answerQuestion(String selectedAnswer) {
    //Adiciona a variável, passando um parâmetro p guardar resposta
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      indexQuestions += 1;
    });
  }

  @override
  Widget build(ctx) {
    final currentQuestion = questions[indexQuestions];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          //Definição para deixar os campos centralizados
          mainAxisAlignment: MainAxisAlignment.center,
          //Definoção para deixar o campo de respostas mais largo
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.tiltNeon(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            //validação de número de alternativas, usando map para transformar em Widget
            ...currentQuestion.shuffledAnswers().map((answer) {
              return AnswerButton(answer, () {
                //Função anônima, passando variável tipo função, com parâmetro
                //que guarda a resposta
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
