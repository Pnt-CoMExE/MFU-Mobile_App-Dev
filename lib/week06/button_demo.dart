import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  Widget createIconButton() {
    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.volume_up, color: Colors.red),
          onPressed: () {
            // debugPrint("Icon Button Pressed");
          },
        ),
        Ink(
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blue,
          ),
          child: IconButton(
            onPressed: () {
              // debugPrint("Icon Button Pressed");
            },
            icon: Icon(Icons.android, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget createOutlinedButton() {
    return OverflowBar(
      children: [
        OutlinedButton(onPressed: () {}, child: Text('OutlineButton')),
        SizedBox(width: 8),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: Colors.amber,
          ),
          child: Text('OutlineButton'),
        ),
      ],
    );
  }

  Widget createButtons() {
    return OverflowBar(
      children: [
        TextButton(onPressed: () {}, child: Text('Text Button')),
        SizedBox(width: 8),
        ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
        SizedBox(width: 8),
        FilledButton(onPressed: () {}, child: Text('Filled Button')),
        SizedBox(width: 8),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(backgroundColor: Colors.red),
          child: Text('Filled Button'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            createIconButton(),
            Divider(),
            createOutlinedButton(),
            Divider(),
            createButtons(),
          ],
        ),
      ),
    );
  }
}
