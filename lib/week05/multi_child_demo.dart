import 'package:flutter/material.dart';

class MultiChildDemo extends StatelessWidget {
  const MultiChildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 150, height: 100, color: Colors.yellow),
            Container(width: 100, height: 100, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
