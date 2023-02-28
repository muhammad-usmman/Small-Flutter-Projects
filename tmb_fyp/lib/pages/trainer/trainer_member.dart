import 'package:flutter/material.dart';

import '../../constants.dart';

class TrainerMember extends StatefulWidget {
  const TrainerMember({Key? key}) : super(key: key);

  @override
  State<TrainerMember> createState() => _TrainerMemberState();
}

class _TrainerMemberState extends State<TrainerMember> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: kpda20,
            child: Column(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: kprimary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        gaph20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.fitness_center),
                                gapw10,
                                Text('The Muscle Bar',
                                  style: kmd,
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_active),
                            )
                          ],
                        ),
                        gaph20,
                        Row(
                          children: [
                           gaph10,
                            gapw20,
                            Text("Member's Info",
                              style: kmd,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gaph20,
                gaph20,
                Row(
                  children: const [
                    gapw20,
                    Text('Detail',
                        style: kmd
                    )
                  ],
                ),
                gaph20,
                gaph10,
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Muhammad Haseeb'),
                        leading: const Icon(Icons.person),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      gaph20,
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Ali Sher Cheema'),
                        leading: const Icon(Icons.person),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
