import 'package:flutter/material.dart';
import 'package:sbt_sonoplastia/Sons.dart';

void main() {
  runApp(const SbtSonoplastia());
}

class SbtSonoplastia extends StatelessWidget {
  const SbtSonoplastia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBT Sonoplastia',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: const Center(
          child: Sons(),
        ),
        appBar: AppBar(
          title: const Text('SBT SONOPLASTIA'),
          backgroundColor: const Color.fromARGB(255, 39, 1, 83),
        ),
      ),
    );
  }
}
