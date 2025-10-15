import 'package:flutter/material.dart';

class Asm1 extends StatefulWidget {
  const Asm1({super.key});

  @override
  State<Asm1> createState() => _Asm1State();
}

class _Asm1State extends State<Asm1> {
  String fromDate = '';
  DateTime? selectedDate;
  String toDate = '';

  void showCalendarFrom() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025, 1, 1),
      lastDate: DateTime(2025, 12, 31),
    );
    if (dt != null) {
      setState(() {
        fromDate = '${dt.day}/${dt.month}/${dt.year}';
        selectedDate = dt;
      });
    } else {
      setState(() {
        fromDate = 'No date selected';
      });
    }
  }

  void showCalendarTo() async {
    DateTime? dt = await showDatePicker(
      context: context,
      firstDate: selectedDate!,
      lastDate: DateTime(2025, 12, 31),
    );
    if (dt != null) {
      setState(() {
        toDate = '${dt.day}/${dt.month}/${dt.year}';
      });
    } else {
      setState(() {
        toDate = 'No date selected';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DatePicker Demo', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Row(
                children: [
                  FilledButton.icon(
                    onPressed: () {
                      showCalendarFrom();
                    },
                    icon: Icon(Icons.calendar_today),
                    label: Text('From'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(fromDate),
                  ),
                ],
              ),
              Row(
                children: [
                  FilledButton.icon(
                    onPressed: () {
                      showCalendarTo();
                    },
                    icon: Icon(Icons.calendar_today),
                    label: Text('To'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(toDate),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
