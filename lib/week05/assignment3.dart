import 'package:flutter/material.dart';
import 'dart:math';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  late int rannum;
  int change = 3;
  String mes = "Guess a number from 0 to 9";
  bool gg = true;

  TextEditingController tc = TextEditingController();

  @override
  void initState() {
    super.initState();
    newGame();
  }

  void newGame() {
    setState(() {
      rannum = Random().nextInt(10);
      change = 3;
      mes = "Guess a number from 0 to 9";
      gg = true;
      tc.clear();
    });
  }

  void cChange() {
    final playerGuess = int.tryParse(tc.text);

    if (playerGuess == null) {
      return;
    }

    setState(() {
      change--;

      if (playerGuess == rannum) {
        mes = "Correct, you win! 🎉";
        gg = false;
      } else if (change == 0) {
        mes = "Sorry, you lose. The answer was $rannum";
        gg = false;
      } else if (playerGuess > rannum) {
        mes = "$playerGuess is too large! You have $change chance(s) left.";
      } else {
        mes = "$playerGuess is too small! You have $change chance(s) left.";
      }

      tc.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guess a number game')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tc,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter a number"),
            ),
            const SizedBox(height: 20),
            Text(mes, style: const TextStyle(color: Colors.red, fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: gg ? cChange : newGame,
              child: Text(gg ? 'Guess' : 'Replay'),
            ),
          ],
        ),
      ),
    );
  }
}
