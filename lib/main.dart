import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpJuan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:, <------------- change for screen testing
    );
  }
}
