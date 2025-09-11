import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  const SingleChildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('My App')),
      body: SafeArea(
        //Align is (x,y) -1 to 1
        child: Align(
          alignment: Alignment(0.75, -1),
          child: Text('Single child'),
        ),
      ),
    );
  }
}
