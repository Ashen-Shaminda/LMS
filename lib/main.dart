import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/drawer.dart';
import 'package:lms/home_page.dart';
import 'package:lms/auth/main_page.dart';
import 'package:lms/navbar/navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await initialization(null);
  runApp(
    const MyApp(),
  );
}

Future initialization(BuildContext? context) async {
  await Future.delayed(
    const Duration(seconds: 2),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
