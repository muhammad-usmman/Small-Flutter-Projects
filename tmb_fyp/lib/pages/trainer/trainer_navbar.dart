import 'package:flutter/material.dart';
import 'package:tmb_fyp/pages/trainer/trainer_dashboard.dart';
import 'package:tmb_fyp/pages/trainer/trainer_member.dart';
import 'package:tmb_fyp/pages/trainer/trainer_profile.dart';

class TrainerNavBar extends StatefulWidget {
  const TrainerNavBar({Key? key}) : super(key: key);


  @override
  State<TrainerNavBar> createState() => _TrainerNavBarState();
}


class _TrainerNavBarState extends State<TrainerNavBar> {
  int index = 0;
  final screens = [
    const TrainerDashboard(),
    const TrainerMember(),
    const TrainerProfile(),
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
              label: 'Member',
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