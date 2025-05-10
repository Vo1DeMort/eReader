import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          (Platform.isAndroid || Platform.isIOS)
              ? AppBar(
                title: Text('Epub reader'),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.pin_end_sharp),
                ),
              )
              : null,
      body: Column(children: [Text('hello')]),
    );
  }
}
