import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Gettogether extends StatefulWidget {
  const Gettogether({super.key});

  @override
  State<Gettogether> createState() => _GettogetherState();
}

class _GettogetherState extends State<Gettogether> {
  TextEditingController selectDate = TextEditingController();
  TextEditingController selectTime = TextEditingController();
  DateTime _pickedDate = DateTime.now();
  TimeOfDay _pickedTime = TimeOfDay.now();

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _pickedDate) {
      setState(() {
        _pickedDate = pickedDate;
        selectDate.text = DateFormat('yyyy/MM/dd').format(_pickedDate);
      });
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != _pickedTime) {
      setState(() {
        _pickedTime = pickedTime;
        selectTime.text = _pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(padding: EdgeInsets.symmetric(horizontal: 70),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Enter Batch",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(padding: EdgeInsets.symmetric(horizontal: 70),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Venue",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Container(padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                readOnly: true,
                onTap: _selectDate,
                controller: selectDate,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_rounded),
                  hintText: "Enter date",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                readOnly: true,
                onTap: _selectTime,
                controller: selectTime,
                decoration: const InputDecoration(
                  icon: Icon(Icons.access_time_rounded),
                  hintText: "Select Time",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      onPressed: () {},
                      child: const Text("Submit"),
                    ),
                    const SizedBox(width: 50,),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),onPressed: (){}, child: const Text("Share"))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
