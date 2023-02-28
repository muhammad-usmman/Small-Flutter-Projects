import 'package:flutter/material.dart';
import 'package:tmb_fyp/pages/guest/guest_navbar.dart';
import 'package:tmb_fyp/pages/trainer/trainer_login.dart';

import '../constants.dart';
import 'member/member_login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.fitness_center,
                  size: 70,
                ),
                gaph20,
                Text('W e l c o m e  T o', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold,)),
                gaph20,
                Text('The Muscle Bar', style: Theme.of(context).textTheme.headline6),

              ],
            ),
          ),


          Container(
              height: MediaQuery.of(context).size.height * 0.3 ,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

              child: Padding(
                padding: kpdh20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                          MaterialPageRoute(builder: (context) => const GuestNavBar()));
                        },
                        child: const Text('GUEST')
                    ),
                    gaph20,
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TrainerLogin()));
                        },
                        child: const Text('TRAINER')
                    ),
                    gaph20,

                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MemberLogin()));
                        },
                        child: const Text('MEMBER')
                    ),
                  ],
                ),
              )
          ),

        ],
      ),


    );
  }
}
