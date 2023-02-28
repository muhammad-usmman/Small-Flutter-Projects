import 'package:flutter/material.dart';
import 'package:tmb_fyp/pages/guest/guest_navbar.dart';
import 'package:tmb_fyp/pages/member/member_navbar.dart';
import 'package:tmb_fyp/pages/splashscreen.dart';
import 'package:tmb_fyp/pages/trainer/trainer_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Muscle Bar',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home:
      const MySplashScreen(),
    );
  }
}

