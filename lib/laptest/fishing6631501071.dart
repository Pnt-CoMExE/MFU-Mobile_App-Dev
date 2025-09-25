import 'package:flutter/material.dart';

class Fishing extends StatefulWidget {
  const Fishing({super.key});

  @override
  State<Fishing> createState() => _FishingState();
}

class _FishingState extends State<Fishing> {
  // Fish data
  List fish = [
    {
      'name': 'AnglerFish',
      'price': 20,
      'image': 'assets/images/fish/anglerfish.png',
    },
    {
      'name': 'NeonTerTra',
      'price': 10,
      'image': 'assets/images/fish/neon-tetra.png',
    },
    {
      'name': 'Puffer',
      'price': 5,
      'image': 'assets/images/fish/puffer-fish.png',
    },
    {'name': 'Shark', 'price': 10, 'image': 'assets/images/fish/shark.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Fishing Game', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Center(child: Text('Worms:', style: TextStyle(fontSize: 17))),
                Icon(Icons.waves_rounded, color: Colors.red),
                Icon(Icons.waves_rounded, color: Colors.red),
                Icon(Icons.waves_rounded, color: Colors.red),
                Icon(Icons.waves_rounded, color: Colors.red),
                Icon(Icons.waves_rounded, color: Colors.red),
              ],
            ),
            Row(
              children: [
                Icon(Icons.attach_money_rounded, color: Colors.amber),
                Text('0', style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/fish/fisherman.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Fishing', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Reset', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
