import 'package:flutter/material.dart';

class TimetablesScreen extends StatelessWidget {
  const TimetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Table'),
      ),
      body: const Center(
        child: Text('Display Time table here'),
      ),
    );
  }
}