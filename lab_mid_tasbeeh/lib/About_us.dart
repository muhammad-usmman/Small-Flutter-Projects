import 'package:flutter/material.dart';
import 'package:lab_mid_tasbeeh/contact.dart';

import 'package:lab_mid_tasbeeh/screens/homepage.dart';



class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contact Us'),backgroundColor:   Colors.teal,),

        backgroundColor:   Colors.teal,
        body: Container(

          color:   Colors.teal,
          child: Center(
            child: Column(

              children: [
                SizedBox(height: 100.0),
                Row(children: [

                  Icon(Icons.person),
                  SizedBox(width: 20.0,),
                  Text('Hi, My name is Muhammad Usman'),
                ],
                ),
                SizedBox(height: 45.0,),
                Row(
                  children: [
                    Text('I am a full stack Developoer mainly working from COMSATS University vehari'),
                  ],
                ),
                SizedBox(height: 50.0,),
                Row(
                  children: [

                    Icon(Icons.mail),
                    SizedBox(width: 20.0,),
                    Text('I have made this app for better tasbiah')



                  ],
                ),
              ],
            ),
          ),


        ),
        drawer: Drawer( child:
        ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Tasbih App'),

            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Home(

                    )));
              },
            ),




            ListTile(
              title: Text('Queries'),
              leading: Icon(Icons.question_mark),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>About(

                    )));
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.call),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Contact(

                    )));
              },
            ),
            ListTile(
              title: Text('About us'),
              leading: Icon(Icons.backup),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>About(

                    ))
                );
              },
            ),
          ],
        ),),
      ),


    );
  }
}
