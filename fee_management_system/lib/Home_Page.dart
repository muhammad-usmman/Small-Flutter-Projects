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
                      image:AssetImage('images/icons/cruise.jpg',),
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
                      image:AssetImage('images/icons/cruise.jpg',),
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
                      image:AssetImage('images/icons/cruise.jpg',),
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
                      image:AssetImage('images/icons/cruise.jpg',),
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
      );

  }
}
