import 'dart:math';

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  String num1 = '';
  String num2 = '';
  String result = '';

  TextEditingController tcNum1 = TextEditingController();
  TextEditingController tcNum2 = TextEditingController();

  void calSum() {
    setState(() {
      if (num1.isEmpty || num2.isEmpty) {
        result = 'Please enter both numbers';
      } else if (int.tryParse(num1) == null || int.tryParse(num2) == null) {
        result = 'Please input only numbers';
      } else {
        int n1 = int.parse(num1);
        int n2 = int.parse(num2);
        result = 'Result = ${n1 + n2}';
      }
    });
  }

  void calPow() {
    setState(() {
      if (num1.isEmpty || num2.isEmpty) {
        result = 'Please enter both numbers';
      } else if (int.tryParse(num1) == null || int.tryParse(num2) == null) {
        result = 'Please input only numbers';
      } else {
        int n1 = int.parse(num1);
        int n2 = int.parse(num2);
        result = 'Result = ${pow(n1, n2)}';
      }
    });
  }

  void clear() {
    setState(() {
      tcNum1.clear();
      tcNum2.clear();
      num1 = '';
      num2 = '';
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcNum1,
              onChanged: (value) => num1 = value,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Number 1',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcNum2,
              onChanged: (value) => num2 = value,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Number 2',
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: calSum,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Sum',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: calPow,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Power',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: clear,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Clear',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(result, style: TextStyle(color: Colors.red, fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}
