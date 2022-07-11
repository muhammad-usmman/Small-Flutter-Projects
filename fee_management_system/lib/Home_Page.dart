import 'package:flutter/material.dart';
import 'contsnts/constant.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.grey,

          height: 1000.0,
          width: 500.0,

          child:Column(
            children: [
              kpd20,
              Container(
                height: 250,
                width: 350,
                // color: Colors.red,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
              sh20,
            kpd20,
            Container(
              height: 150,
              width: 150,
              // color: Colors.red,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
              // sw20,
              sh20,
              // kpd40,
              Container(
                height: 150,
                width: 150,
                // color: Colors.red,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
              // sw20,
              sh20,
              Container(

                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border:  Border.all(
                    color: Colors.red,
                  ),
                  borderRadius:  BorderRadius.all(Radius.circular(20))
                ),
              ),


            ],
          ),

        ),
        ),
      );

  }
}
