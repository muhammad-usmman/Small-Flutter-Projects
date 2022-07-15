import 'package:flutter/material.dart';
import 'package:fee_management_system/contsnts/constant.dart';

class t_landingpage extends StatefulWidget {
  const t_landingpage({Key? key}) : super(key: key);

  @override
  State<t_landingpage> createState() => _t_landingpageState();
}

class _t_landingpageState extends State<t_landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 1000.0,
            width: 500.0,
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    child:
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 200,

                      width: 400.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage('images/teacherslogo.jpg',),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),

                    // onTap: (){
                    //   Navigator.push(context,
                    //     MaterialPageRoute(builder: (context)=>S_SignInPage()
                    //     ),
                    //   );
                    // }
                  ),
                  // child: const Text('Cruise',),
                  sh20,
                  kpd20,
                  InkWell(
                    child:
                    Container(
                      alignment: Alignment.bottomLeft,
                      // child: const Text('Classes',),
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
                    // onTap: (){
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context)=>cruise_Book())
                    //          }
                  ),
                   const Text('Classes',),
                  sh20,
                  kpd20,
                  InkWell(
                    child:
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: const Text('Student Informaton',),
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
                    // onTap: (){
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context)=>cruise_Book())
                    //          }
                  ),
                ],
              ),
            ),

          ),
        )
    );
  }
}
