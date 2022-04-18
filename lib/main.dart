import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Card(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Tocar'),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('SBT SONOPLASTIA'),
          backgroundColor: const Color.fromARGB(255, 39, 1, 83),
        ),
      ),
    );
  }
}
