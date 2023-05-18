import 'package:flutter/cupertino.dart';

import 'dashboard/exam_results.dart';
import 'dashboard/time_table.dart';

class ExamResults {
  List<ExamResult> testResults = [
    ExamResult(
        subject: 'Mobile Application Development',
        subjectId: 'PUSL2023',
        score: 100),
    ExamResult(
        subject: 'Computing Group Project', subjectId: 'PUSL2021', score: 85.0),
    ExamResult(
        subject: 'Software Engineering 2', subjectId: 'PUSL2024', score: 78.5),
    ExamResult(
        subject: 'Software Development Tools and Practices',
        subjectId: 'PUSL2020',
        score: 78.5),
  ];
}

class TimeTable{
  List<TimetableEntry> testTimetable = [
    TimetableEntry(course: 'Math', time: '10:00 AM - 11:30 AM', location: 'Room 101'),
    TimetableEntry(course: 'Science', time: '1:30 PM - 3:00 PM', location: 'Room 205'),
    TimetableEntry(course: 'History', time: '3:30 PM - 5:00 PM', location: 'Room 301'),
  ];
}