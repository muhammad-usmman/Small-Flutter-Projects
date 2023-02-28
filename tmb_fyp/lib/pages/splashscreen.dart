import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tmb_fyp/constants.dart';
import 'homepage.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState ();
    Timer(const Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()
            )
        ));
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kprimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fitness_center,
              size: 70,
              // color: kprimary,
            ),
            gaph20,
            Text(''
                'The Muscle Bar',
                style: TextStyle(
                  // color: kprimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
            )
          ],
        ),
      ),
    );

  }
}