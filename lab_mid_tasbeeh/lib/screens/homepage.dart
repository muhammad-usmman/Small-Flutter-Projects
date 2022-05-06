import 'package:flutter/material.dart';
import 'package:lab_mid_tasbeeh/utilities/constants.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroundimage.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),

      ),
    );
  }
}


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
        drawer: Drawer( child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('tasbeeh App'),

            ),
            FlatButton(

              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text("HOME",style: TextStyle(color: Colors.teal)),
            ),


            FlatButton(

              onPressed:(){

              },
              child: Text("QUERIES",style: TextStyle(color: Colors.teal)),
            ),


            FlatButton(

              onPressed:(){

              },

              child:

              Text("About us",style: TextStyle(color: Colors.teal)),
            ),
          ],
        ),
        ),

        backgroundColor: Colors.teal,

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),

          ),
        ),
      ),
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/backgroundimage.jpeg'),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
    Colors.white.withOpacity(0.8), BlendMode.dstATop),
    ),
    ),
    ));

  }
}
