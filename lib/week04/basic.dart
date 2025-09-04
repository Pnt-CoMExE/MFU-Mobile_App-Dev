import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Center(child: Text('Hello, World!')),
      floatingActionButton: FloatingActionButton(
        onPressed: (null),
        child: Text('Click'),
      ),
    );
  }
}
