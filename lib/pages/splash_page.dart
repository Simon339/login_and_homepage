import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app2/pages/auth_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SpashPageState createState() => _SpashPageState();
}

class _SpashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const AuthPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFDD2C00),
            Color(0xFFE1F5FE),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/delivery2_generated.jpg',
            height: 300.0,
            width: 300.0,
          ),
          const Text(
            "We Got You",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.5,
            ),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    ));
  }
}
