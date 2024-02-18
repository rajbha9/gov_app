import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_app/screen/detail.dart';
import 'package:gov_app/screen/homepage.dart';
import 'package:gov_app/screen/spalesh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: 'spalesh',
      routes: {
        '/':(context) => HomePage(),
        'detail':(context) => DetailPage(),
        'spalesh':(context) => SpaleshPage()
      },
    );
  }
}
