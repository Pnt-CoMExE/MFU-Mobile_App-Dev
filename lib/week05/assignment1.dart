import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // optional
          children: [
            Text(
              'Wedding Organizer',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sevillana-Regular',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Pre-wedding, Photo, Party',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontFamily: 'Sevillana-Regular',
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              ),
              onPressed: () {},
              child: Text(
                'Our services',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 24),
        child: Text(
          '345 Moo 1 Tasud Chiang Rai, Thailand',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.white70),
        ),
      ),
    );
  }
}
