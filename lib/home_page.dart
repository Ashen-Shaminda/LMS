import 'package:flutter/material.dart';

import 'drawer.dart';
import 'navbar/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
