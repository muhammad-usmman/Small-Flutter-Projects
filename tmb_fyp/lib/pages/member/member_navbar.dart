import 'package:flutter/material.dart';
import 'package:tmb_fyp/pages/member/member_trainer.dart';

import 'member_dashboard.dart';
import 'member_profile.dart';


class MemberNavBar extends StatefulWidget {
  const MemberNavBar({Key? key}) : super(key: key);


  @override
  State<MemberNavBar> createState() => _MemberNavBarState();
}


class _MemberNavBarState extends State<MemberNavBar> {
  int index = 0;
  final screens = [
    const MemberDashboard(),
    const MemberTrainer(),
    const MemberProfile(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          // indicatorColor: Colors.black12,
        ),
        child: NavigationBar(
          // backgroundColor: Colors.grey.shade200,
          // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          // animationDuration: Duration(seconds: 2),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.dashboard_outlined),
              label: 'Dashboard',
              selectedIcon: Icon(Icons.dashboard, color: Colors.black),
            ),
            // NavigationDestination(
            //   tooltip: "",
            //   icon: Icon(Icons.flag_outlined),
            //   label: 'Activity',
            //   selectedIcon: Icon(Icons.flag, color: Colors.black),
            // ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.message_outlined),
              label: 'Trainer',
              selectedIcon: Icon(Icons.message, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              selectedIcon: Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
      ),


    );
  }
}