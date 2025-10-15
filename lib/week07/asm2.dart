import 'package:flutter/material.dart';

class Asm2 extends StatefulWidget {
  const Asm2({super.key});

  @override
  State<Asm2> createState() => _Asm2State();
}

class _Asm2State extends State<Asm2> {
  bool sw = false;
  String type = 'Hot';
  double sliderValue = 0;
  String sugarLevel = 'None';

  void toggleSwitch(bool value) {
    if (sw == false) {
      setState(() {
        sw = true;
        type = 'Cold';
      });
    } else {
      setState(() {
        sw = false;
        type = 'Hot';
      });
    }
  }

  void showAlert() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your order'),
          content: Text('$type coffee with $sugarLevel sugar'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffe Shop'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text('Your Order', style: TextStyle(fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Type'),
                  OverflowBar(
                    children: [
                      Text('Hot'),
                      Switch(value: sw, onChanged: toggleSwitch),
                      Text('Cold'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Sugar level'),
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
              FilledButton(onPressed: showAlert, child: Text('Order')),
            ],
          ),
        ),
      ),
    );
  }
}
