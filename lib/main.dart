import 'package:flutter/material.dart';
import 'package:walki_talki_2/call_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walki Talki',
      debugShowCheckedModeBanner: false,
      home: CallPage(),
    );
  }
}

