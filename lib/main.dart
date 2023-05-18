import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/drawer.dart';
import 'package:lms/navbar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() => runApp(
      const MyApp(),
    );

Future initialization(BuildContext? context) async {
  await Future.delayed(
    const Duration(seconds: 2),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white70,
        primaryColorDark: Colors.white70,
        fontFamily: 'DMSans',
      ),
      home: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const Text(
              "Learning Management System",
              style: TextStyle(fontSize: 21),
            ),
          ),
          endDrawer: const DrawerWidget(),
          body: BottomNavbar(),
        ),
      ),
    );
  }
}
