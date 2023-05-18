import 'package:flutter/material.dart';

class ExamResults extends StatelessWidget {
  const ExamResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Results'),
      ),
      body: const Center(
        child: Text('Display Exam results here'),
      ),
    );
  }
}
