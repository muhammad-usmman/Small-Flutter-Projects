import 'package:fee_management_system/Manager/Data_Manipulation/calsses_info.dart';
import 'package:fee_management_system/Manager/Data_Manipulation/student_info.dart';
import 'package:flutter/material.dart';
import 'package:fee_management_system/contsnts/constant.dart';

class m_landingpage extends StatefulWidget {
  const m_landingpage({Key? key}) : super(key: key);

  @override
  State<m_landingpage> createState() => _m_landingpageState();
}

class _m_landingpageState extends State<m_landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height:700.0,
            width: 500.0,
            child: Center(
              child: Column(
                children: [
                  // InkWell(
                  //   child:
                  //   Container(
                  //     alignment: Alignment.bottomLeft,
                  //     height: 200,
                  //
                  //     width: 400.0,
                  //     decoration:  BoxDecoration(
                  //       border: Border.all(color: Colors.black),
                  //       image: DecorationImage(
                  //         fit: BoxFit.cover,
                  //         image:AssetImage('images/teacherslogo.jpg',),
                  //
                  //       ),
                  //       borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  //       color: Colors.redAccent,
                  //
                  //     ),
                  //   ),
                  //
                  //   // onTap: (){
                  //   //   Navigator.push(context,
                  //   //     MaterialPageRoute(builder: (context)=>S_SignInPage()
                  //   //     ),
                  //   //   );
                  //   // }
                  // ),
                  sh20,
                  kpd20,
                  Row(
                    children: [
                      // sh20,
                      kpd20,
                      Column(
                        children: [
                          InkWell(
                            child:
                            Container(
                              alignment: Alignment.bottomLeft,

                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/Teacherlogin.png',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                // color: Colors.redAccent,
                              ),
                            ),
                            // onTap: (){
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context)=>cruise_Book())
                            //          }
                          ),
                          const Text(' Edit Teacher Info',),
                        ],
                      ),

                      sh20,
                      kpd20,
                      Column(
                        children: [
                          InkWell(
                            child:
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/student-information.png',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>register_student())
                              );
                                     }
                          ),
                     const Text('Edit Student Info',),
                        ],
                      ),

                    ],
                  ),
                  sh20,
                  kpd20,
                  Row(
                    children: [
                      kpd20,
                      Column(
                        children: [
                          InkWell(
                            child:
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/classes.png',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                // color: Colors.redAccent,
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>class_info()));
                                     }
                          ),
                     const Text('Edit Classes Info',),
                        ],
                      ),

                      kpd20,
                      Column(
                        children: [
                          InkWell(
                            child:
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/feesicon.jpg',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                            // onTap: (){
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context)=>cruise_Book())
                            //          }
                          ),
                          const Text('Edit Class wise Fees',),
                        ],
                      ),

                    ],
                  ),
                  sh20,
                  kpd20,
                  Row(
                    children: [
                      kpd20,
                      Column(
                        children: [
                          InkWell(
                            child:
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/subject.jpeg',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                            // onTap: (){
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context)=>cruise_Book())
                            //          }
                          ),
                          const Text('Edit Subjects',),
                        ],
                      ),

                      kpd20,
                      Column(
                        children: [
                          InkWell(

                            child:
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 150.0,
                              width: 150.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage('images/annual-fee.jpeg',),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                            // onTap: (){
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context)=>cruise_Book())
                            //          }
                          ),
                          const Text('Edit Subject wise Fees',),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),

          ),
        )
    );
  }
}
