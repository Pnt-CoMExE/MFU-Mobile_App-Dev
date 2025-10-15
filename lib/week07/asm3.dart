import 'package:flutter/material.dart';

class Asm3 extends StatefulWidget {
  const Asm3({super.key});

  @override
  State<Asm3> createState() => _Asm3State();
}

class _Asm3State extends State<Asm3> {
  int groupValue = 0;
  bool sw = false;
  String type = 'Hot';
  int price = 0;
  String sugarLevel = 'None';
  double sliderValue = 0;
  String msg = '';
  List<Map<String, dynamic>> coffeeMenu = [
    {'name': 'Latte', 'price': 35, 'img': 'asset/img/latte.png'},
    {'name': 'Americano', 'price': 30, 'img': 'asset/img/americano.png'},
    {'name': 'Cappuchino', 'price': 40, 'img': 'asset/img/cappuchino.png'},
  ];

  void changeRadio(int? value) {
    setState(() {
      groupValue = value!;
    });
  }

  void toggleSwitch(bool value) {
    if (sw == false) {
      setState(() {
        sw = true;
        type = 'Cold';
        price = 5;
      });
    } else {
      setState(() {
        sw = false;
        type = 'Hot';
        price = 0;
      });
    }
  }

  void showAlert() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your order'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                coffeeMenu[groupValue]['img'],
                width: 100,
                height: 100,
              ),
              Text(
                '$type ${coffeeMenu[groupValue]['name']}  with $sugarLevel sugar\nPrice= ${coffeeMenu[groupValue]['price'] + price} Baht',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('no');
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('yes');
                setState(() {
                  groupValue = 0;
                  sw = false;
                  type = 'Hot';
                  price = 0;
                  sliderValue = 0;
                  sugarLevel = 'None';
                  msg = 'Thank you for your order!';
                });
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffee Shop'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Your order',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Text(
                  'Coffee',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: [
                Radio(value: 0, groupValue: groupValue, onChanged: changeRadio),
                Text('Latte 35'),
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: groupValue, onChanged: changeRadio),
                Text('Americano 30'),
              ],
            ),
            Row(
              children: [
                Radio(value: 2, groupValue: groupValue, onChanged: changeRadio),
                Text('Cappuchino 40'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Type',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                OverflowBar(
                  children: [
                    Text('Hot'),
                    Switch(value: sw, onChanged: toggleSwitch),
                    Text('Cold (+5)'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Sugar',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text('None'),
                Slider(
                  value: sliderValue,
                  min: 0,
                  max: 2,
                  divisions: 2,
                  label: sliderValue == 0
                      ? 'None'
                      : sliderValue == 1
                      ? 'Less'
                      : 'Normal',
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                      sugarLevel = sliderValue == 0
                          ? 'None'
                          : sliderValue == 1
                          ? 'Less'
                          : 'Normal';
                    });
                  },
                ),
                Text(
                  sliderValue == 0
                      ? 'None'
                      : sliderValue == 1
                      ? 'Less'
                      : 'Normal',
                ),
              ],
            ),
            FilledButton(
              onPressed: () {
                showAlert();
              },
              child: Text('Order'),
            ),
            Text(msg, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
