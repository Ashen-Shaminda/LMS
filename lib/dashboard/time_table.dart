import 'package:flutter/material.dart';

class TimetableEntry {
  final String course;
  final String time;
  final String location;

  TimetableEntry({required this.course, required this.time, required this.location});
}

class TimetableScreen extends StatelessWidget {
  final List<TimetableEntry> timetable;

  TimetableScreen({required this.timetable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timetable'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
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
                leading: Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
                title: Text(
                  entry.course,
                  style: TextStyle(fontWeight: FontWeight.bold),
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

void main() {
  List<TimetableEntry> testTimetable = [
    TimetableEntry(course: 'Math', time: '10:00 AM - 11:30 AM', location: 'Room 101'),
    TimetableEntry(course: 'Science', time: '1:30 PM - 3:00 PM', location: 'Room 205'),
    TimetableEntry(course: 'History', time: '3:30 PM - 5:00 PM', location: 'Room 301'),
  ];

  runApp(MaterialApp(
    home: TimetableScreen(timetable: testTimetable),
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
  ));
}