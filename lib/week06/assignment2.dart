import 'dart:async';
import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  double countdown = 1;
  int click = 0;
  Timer? timer;
  bool isButtonEnabled = true;

  void startCountdown() {
    timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      setState(() {
        countdown -= 0.01;
        if (countdown <= 0) {
          countdown = 0;
          isButtonEnabled = false;
          t.cancel();
        }
      });
    });
  }

  void clickCount() {
    if (countdown == 1) {
      startCountdown();
    }
    setState(() {
      click++;
    });
  }

  void resetGame() {
    setState(() {
      countdown = 1;
      click = 0;
      isButtonEnabled = true;
    });
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(countdown.toString(), style: TextStyle(color: Colors.red)),
              Text("Click = $click", style: TextStyle(fontSize: 30)),
              OverflowBar(
                children: [
                  ElevatedButton.icon(
                    onPressed: isButtonEnabled ? clickCount : null,
                    icon: Icon(Icons.ads_click),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                    ),
                    label: Text("Click"),
                  ),
                  OutlinedButton.icon(
                    onPressed: resetGame,
                    icon: Icon(Icons.replay),
                    style: IconButton.styleFrom(foregroundColor: Colors.black),
                    label: Text("Click", style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
