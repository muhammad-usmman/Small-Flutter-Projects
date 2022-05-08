import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_mid_tasbeeh/About_us.dart';
import 'package:lab_mid_tasbeeh/contact.dart';
import 'package:lab_mid_tasbeeh/screens/Counter.dart';
import 'package:lab_mid_tasbeeh/screens/Create_Tasbeeh.dart';
import 'package:lab_mid_tasbeeh/screens/saved_tasbih.dart';
import 'package:lab_mid_tasbeeh/utilities/constants.dart';



class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image:AssetImage('images/backgroundimage.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Column( children:<Widget> [

            SizedBox(height: 50.0,),
              GestureDetector(
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Create_tsbh(


                  )));
            },

               child: Container(
              child: Center(
                child: Text(
                  'Addd Tasbih',
                  style: kLargeButtonStyle,
                ),
              ),
                 color: Colors.white54,
              margin: EdgeInsets.only(top: 10.0),
              width:  220.0,
              height: 60.0,
            ),
          ),
            SizedBox(height: 30.0,),
            GestureDetector(
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>home(


                    )));
              },

              child: Container(
                child: Center(
                  child: Text(
                    'Counter',
                    style: kLargeButtonStyle,
                  ),
                ),
                color: Colors.white54,

                margin: EdgeInsets.only(top: 10.0),
                width:  220.0,
                height: 60.0,
              ),
            ),
            SizedBox(height: 30.0,),
            GestureDetector(
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Saved(


                    )));
              },

              child: Container(
                child: Center(
                  child: Text(
                    'Saved Tasbih',
                    style: kLargeButtonStyle,
                  ),
                ),
                color: Colors.white54,

                margin: EdgeInsets.only(top: 10.0),
                width:  220.0,
                height: 60.0,
              ),
            )
          ]


          ),



        ),
        drawer: Drawer( child: ListView(

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

                    )));
              },
            ),
          ],
        ),),




      ),

    );

  }
}


// onTap: (){
//
//   Navigator.push(context,
//       MaterialPageRoute(builder: (context)=>CreateTsbh(
//
//       )));
// },
