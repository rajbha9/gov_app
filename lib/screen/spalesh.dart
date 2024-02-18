import 'dart:async';

import 'package:flutter/material.dart';

class SpaleshPage extends StatefulWidget {
  const SpaleshPage({super.key});

  @override
  State<SpaleshPage> createState() => _SpaleshPageState();
}

class _SpaleshPageState extends State<SpaleshPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed('/');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/spalesh.png',
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'G',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextSpan(
                      text: 'overnment ',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    TextSpan(
                      text: 'S',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextSpan(
                      text: 'ervices',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
