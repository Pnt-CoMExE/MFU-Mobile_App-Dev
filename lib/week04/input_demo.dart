import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  String message = '';

  TextEditingController tcName = TextEditingController();

  void updateMessage() {
    setState(() {
      message = tcName.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input your password',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: updateMessage, child: Text('OK')),
          SizedBox(height: 10),
          Text(message),
        ],
      ),
    );
  }
}
