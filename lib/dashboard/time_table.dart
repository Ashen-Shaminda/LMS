import 'package:flutter/material.dart';

class TimetableEntry {
  final String course;
  final String time;
  final String location;

  TimetableEntry({required this.course, required this.time, required this.location});
}

class TimetableScreen extends StatelessWidget {
  final List<TimetableEntry> timetable;

  const TimetableScreen({super.key, required this.timetable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timetable'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: timetable.length,
          itemBuilder: (context, index) {
            final entry = timetable[index];
            return Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
                title: Text(
                  entry.course,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Time: ${entry.time}\nLocation: ${entry.location}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
