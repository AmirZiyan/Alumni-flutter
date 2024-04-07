import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Talksview extends StatefulWidget {
  final String title;
  final String speaker;
  final String description;
  final DateTime date;
  final TimeOfDay time;

  const Talksview({
    required this.title,
    required this.speaker,
    required this.description,
    required this.date,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  State<Talksview> createState() => _TalksviewState();
}

class _TalksviewState extends State<Talksview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talk Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${widget.title}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Speaker: ${widget.speaker}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Description: ${widget.description}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Date: ${DateFormat('yyyy/MM/dd').format(widget.date)}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Time: ${widget.time.format(context)}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
