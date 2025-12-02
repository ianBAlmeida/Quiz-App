import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        //torna a imagem menor posicinada possível na vertical
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/drawable/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(202, 255, 255, 255),
          ),
          //tamanho da distância entre a imagem e o texto abaixo
          SizedBox(height: 80),
          Text(
            'Bora fazer um Quiz!!',
            style: GoogleFonts.titanOne(
              color: const Color.fromARGB(255, 62, 5, 77),
              fontSize: 24,
            ),
          ),
          SizedBox(height: 45),
          OutlinedButton.icon(
            //foi criado uma função startQuiz para acionar a mudança
            //de tela (final pois só se usa aqui)
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            //Quando se vai por um icon, não é mais child e sim uma label
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
