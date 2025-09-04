import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  int count = 0;

  //method
  void update() {
    // debugPrint('message');
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Count = $count',
          style: TextStyle(
            fontSize: 26,
            color: const Color.fromARGB(255, 0, 0, 255),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        child: Text('Click', style: TextStyle(color: Colors.blue)),
      ),
    );
  }
}
