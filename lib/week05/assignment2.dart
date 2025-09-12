import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  TextEditingController fTc = TextEditingController();
  TextEditingController sTc = TextEditingController();
  String message = '';

  void calculate() {
    String first = fTc.text.trim();
    String second = sTc.text.trim();

    if (first.isEmpty || second.isEmpty) {
      setState(() => message = 'Incorrect input');
      return;
    }

    final num1 = num.tryParse(first);
    final num2 = num.tryParse(second);

    if (num1 == null || num2 == null) {
      setState(() => message = 'Incorrect input');
    } else {
      setState(() => message = 'Result = ${num1 + num2}');
    }
  }

  void clear() {
    fTc.clear();
    sTc.clear();
    setState(() => message = '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: fTc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: 'First number',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text('+', style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: sTc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: 'Second number',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: clear,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text(
                    'Clear',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(message, style: TextStyle(color: Colors.red, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
