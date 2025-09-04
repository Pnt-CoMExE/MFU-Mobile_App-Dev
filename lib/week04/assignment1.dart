import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  String message = '';

  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcPassword = TextEditingController();

  void checkLogin() {
    setState(() {
      if (tcUsername.text == 'admin' && tcPassword.text == '1234') {
        message = 'Welcome admin';
      } else {
        message = 'Wrong username or password';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 250, 230, 240),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcUsername,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Username',
                suffixIcon: IconButton(
                  onPressed: tcUsername.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcPassword,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: tcPassword.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: checkLogin,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          SizedBox(height: 10),
          Text(message, style: TextStyle(color: Colors.red, fontSize: 15)),
        ],
      ),
    );
  }
}
