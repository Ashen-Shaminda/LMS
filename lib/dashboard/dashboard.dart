import 'package:flutter/material.dart';
import 'package:lms/dashboard/exam_results.dart';
import 'package:lms/dashboard/time_table.dart';

import 'lecture_materials.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 4.0, color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 150,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Text(
                    'Time Table',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: const Icon(
                  Icons.calendar_month_rounded,
                  size: 40,
                ),
                splashColor: Colors.white12,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TimetablesScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4.0,
                  color: Colors.blue.shade900,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 150,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Text(
                    'Lecture Materials',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: const Icon(
                  Icons.menu_book_rounded,
                  size: 40,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LectureMaterialsScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 4.0, color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 150,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Text(
                    'Exam Results',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: const Icon(
                  Icons.credit_score_rounded,
                  size: 40,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExamResults(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
