import 'package:flutter/material.dart';
import 'package:lms/result.dart';

class ExamResult {
  final String subject;
  final String subjectId;
  final double score;

  ExamResult({required this.subject, required this.subjectId, required this.score});
}

class ExamResultScreen extends StatelessWidget {
  final List<ExamResult> examResults;

  ExamResultScreen({required this.examResults});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam Results'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: examResults.length,
          itemBuilder: (context, index) {
            final examResult = examResults[index];
            return Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.menu_book_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Module: ${examResult.subject}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Subject ID: ${examResult.subjectId}'),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Score: ${examResult.score.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}