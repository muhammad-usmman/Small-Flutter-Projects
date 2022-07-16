import 'package:fee_management_system/Student/data_display/anualfee_detail.dart';
import 'package:fee_management_system/Student/data_display/teachers_detail.dart';
import 'package:flutter/material.dart';
import 'package:fee_management_system/contsnts/constant.dart';

class s_landingpage extends StatefulWidget {
  const s_landingpage({Key? key}) : super(key: key);

  @override
  State<s_landingpage> createState() => _s_landingpageState();
}

class _s_landingpageState extends State<s_landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 800.0,
          width: 500.0,
          child: Center(
            child: Column(
              children: [
                kpd20,
                InkWell(
                    child:
                    Container(
                      alignment: Alignment.bottomLeft,
                      // child: const Text('Cruise',),
                      height: 200,
                      width: 400.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage('images/student-studying-at-home-free-vector.jpg',),
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
                sh20,
                kpd20,
                InkWell(
                  child:
                  Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(' Teachers',),
                    height: 150.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:AssetImage('images/teachers.png',),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      // color: Colors.redAccent,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>teachers_detail())
                    );
                           }
                ),
                // Text('Teacher Info'),
                sh20,
                kpd20,
                InkWell(
                  child:
                  Container(
                    alignment: Alignment.bottomLeft,
                    // child: const Text('Fee Information',),
                    height: 150.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:AssetImage('images/annual-fee.jpg',),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      // color: Colors.redAccent,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>annual_fee_detail())
                    );
                           }
                ),
              ],
            ),
          ),

        ),
      )
    );
  }
}
