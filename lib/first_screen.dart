import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset(
        //   'assets/images/quiz-logo.jpg',
        //   width: 300,
        //   color: const Color.fromARGB(150, 255, 255, 255),
        // ),
        Opacity(
          opacity: .7,
          child: Image.asset(
            'assets/images/quiz-logo.jpg',
            width: 300,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Let\'s learn flutter!!',
          style: GoogleFonts.lato(
            color: Color.fromARGB(255, 229, 237, 249),
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_circle_right_outlined),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
