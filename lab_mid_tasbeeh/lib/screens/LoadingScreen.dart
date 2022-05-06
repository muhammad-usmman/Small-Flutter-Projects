import 'package:flutter/material.dart';
import 'dart:async';

import 'package:lab_mid_tasbeeh/screens/homepage.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Home()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child:FlutterLogo(size:MediaQuery.of(context).size.height),

    );
  }
}


