import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/images/baking.jpg',
              fit: BoxFit.cover,
              alignment: AlignmentGeometry.xy(0, 1.1),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "sign in".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.alternate_email, color: primaryColor),
                      ),
                      SizedBox(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.lock_open_outlined,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OverflowBar(
                        children: [
                          IconButton.outlined(
                            onPressed: () {},
                            icon: Icon(Icons.android),
                          ),
                          IconButton.outlined(
                            onPressed: () {},
                            icon: Icon(Icons.comment),
                          ),
                        ],
                      ),
                      OverflowBar(
                        children: [
                          IconButton.filled(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                            color: bgColor,
                            style: IconButton.styleFrom(
                              backgroundColor: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
