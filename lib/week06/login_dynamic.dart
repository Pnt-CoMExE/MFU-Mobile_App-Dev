import 'package:flutter/material.dart';

class LoginDynamic extends StatefulWidget {
  const LoginDynamic({super.key});

  @override
  State<LoginDynamic> createState() => _LoginDynamicState();
}

class _LoginDynamicState extends State<LoginDynamic> {
  List<Color> darkBgColors = [
    const Color(0xFF0D1441),
    const Color(0xFF283584),
    const Color(0xFF376AB2),
  ];

  List<Color> lightBgColors = [
    const Color(0xFF8C2480),
    const Color(0xFFCE587D),
    const Color(0xFFFF9485),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    return Scaffold(
      // body: Container(width: double.infinity, height: double.infinity,),
      body: Container(
        width: size.width, // ทำให้ขนาด container เต็มจอ
        height: size.height,
        decoration: BoxDecoration(
          // ทำ Background Gradients
          gradient: LinearGradient(
            colors: now.hour < 18 ? lightBgColors : darkBgColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        now.hour < 18 ? "Good Morning" : "Good Evening",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Please sign in below",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: 'abc@gmail.com'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      TextField(decoration: InputDecoration(hintText: '****')),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.asset(
                  "assets/images/landscape.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
