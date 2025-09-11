import 'package:flutter/material.dart';

class Design2Demo extends StatelessWidget {
  const Design2Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://www.iconarchive.com/download/i78366/iconka/meow/cat-drunk.72.png',
                ),
              ),
            ),
            Divider(color: Colors.grey, height: 50),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey[400], fontSize: 10),
            ),
            Text(
              'John Doe',
              style: TextStyle(color: Colors.amber, fontSize: 20),
            ),
            Text(
              'Age',
              style: TextStyle(color: Colors.grey[400], fontSize: 10),
            ),
            Text('25', style: TextStyle(color: Colors.amber, fontSize: 20)),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400], size: 20),
                SizedBox(width: 10),
                Text(
                  'John_doe@example.com',
                  style: TextStyle(color: Colors.grey[400], fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
