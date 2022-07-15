import 'package:flutter/material.dart';
import 'contsnts/constant.dart';
import 'package:fee_management_system/Student/login/src/signin.dart';
import 'package:fee_management_system/Teacher/login/src/signin.dart';
import 'package:fee_management_system/Manager/login/src/signin.dart';

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


          height: 1000.0,
          width: 500.0,

          child:Column(
            children: [
              kpd20,
              InkWell(
                child:
                Container(
                  alignment: Alignment.bottomLeft,
                  // child: const Text('Cruise',style: kIText,),
                  height: 200,
                  width: 400.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage('images/1.jpg',),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>S_SignInPage()
                      ),
                    );
                  }
              ),
              sh20,
            kpd20,
              InkWell(
                child:
                Container(
                  alignment: Alignment.bottomLeft,
                  // child: const Text('Cruise',style: kIText,),
                  height: 150.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage('images/studentlogin.png',),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    // color: Colors.redAccent,
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>S_SignInPage()
                    ),
                  );
                }


              ),
              // sw20,
              sh20,
              // kpd40,
              InkWell(
                child:
                Container(
                  alignment: Alignment.bottomLeft,
                  // child: const Text('Cruise',style: kIText,),
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
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>t_SignInPage()
                      ),
                    );
                  }
              ),
              // sw20,
              sh20,
              InkWell(
                child:
                Container(
                  alignment: Alignment.bottomLeft,
                  // child: const Text('Cruise',style: kIText,),
                  height: 150.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage('images/adminlogin.jfif',),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    // color: Colors.redAccent,
                  ),
                ),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>m_SignInPage()
                      ),
                    );
                  }
              ),


            ],
          ),

        ),
        ),
      );

  }
}
