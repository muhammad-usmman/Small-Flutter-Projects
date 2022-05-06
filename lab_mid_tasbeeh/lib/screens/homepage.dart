import 'package:flutter/material.dart';
import 'package:lab_mid_tasbeeh/screens/Create_Tasbeeh.dart';



class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
              GestureDetector(
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>CreateTsbh(


                  )));
            },

               child: Container(
              child: Center(
                child: Text(
                  'Create Tasbih',
                  // style: kLargeButtonStyle,
                ),
              ),
              color: Color(0xFF8d8e98),
              margin: EdgeInsets.only(top: 10.0),
              width:  120.0,
              height: 60.0,
            ),
          ),
            GestureDetector(
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CreateTsbh(


                    )));
              },

              child: Container(
                child: Center(
                  child: Text(
                    'Counter',
                    // style: kLargeButtonStyle,
                  ),
                ),
                color: Colors.teal,

                margin: EdgeInsets.only(top: 10.0),
                width:  120.0,
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
              child: Text('tasbeeh App'),

            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CreateTsbh(

                    )));
              },
            ),




            ListTile(
              title: Text('Queries'),
              leading: Icon(Icons.home),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CreateTsbh(

                    )));
              },
            ),
            ListTile(
              title: Text('About us'),
              leading: Icon(Icons.backup),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CreateTsbh(

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
