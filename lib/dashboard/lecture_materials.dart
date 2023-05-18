import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/dashboard/dashboard.dart';

class LectureMaterialsScreen extends StatelessWidget {
  const LectureMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course Overview',
          style: TextStyle(fontSize: 22),
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
                color: Colors.blueAccent,
                border: Border.all(width: 4.0, color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 170,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  "BSc (Hons) Software Engineering",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                splashColor: Colors.white12,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LectureMaterialsScreen(),
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
                color:  CupertinoColors.systemYellow,
                border: Border.all(
                  width: 4.0,
                  color: Colors.blue.shade900,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 170,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  "PUSL2023 Mobile Application Development",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
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
                color: CupertinoColors.systemIndigo,
                border: Border.all(width: 4.0, color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 170,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  "PUSL2021 Computing Group Project",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
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
                color: CupertinoColors.systemGreen,
                border: Border.all(
                  width: 4.0,
                  color: Colors.blue.shade900,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 170,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  "PUSL2024 Software Engineering 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
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
                color: Colors.pinkAccent.shade100,
                border: Border.all(width: 4.0, color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 170,
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(top: 23, bottom: 10),
                  child: Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  "PUSL2020 Software Development Tools and Practices",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
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
        ],
      ),
    );
  }
}
