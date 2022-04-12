
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerFile.dart';

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children:<Widget> [
          Expanded(child: Row(
            children:<Widget> [
              Expanded(
                child:  RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                  cardwidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.male,
                    label:'MALE',
                  ),
                ),
              ),
              Expanded(
                child:  RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                cardwidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label:'FEMALE',
                ),
                ),
              ),

            ],
          ),
          ),
          Expanded(child:
          RepeatContainerCode( colors: Color(0xFF1D1E33),),
             ),
          Expanded(child: Row(
            children:<Widget> [
              Expanded(
                child: RepeatContainerCode( colors: Color(0xFF1D1E33),),
              ),
              Expanded(
                child: RepeatContainerCode(   colors: Color(0xFF1D1E33),),),

            ],
           ),
          ),
        ],
      )
    );
  }
}

class RepeatTextAndIconWidget extends StatelessWidget {
  RepeatTextAndIconWidget({ required this.iconData, required this.label});
final IconData iconData;
final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Icon(
         iconData,
         size: 85.0,
       ),
       SizedBox(
         height: 15.0,
       ),
       Text(
        label,
         style: TextStyle(
         fontSize: 22.0,
         color: Color(0xFF8D8E98)
       ),)

     ],

    );
  }
}

class RepeatContainerCode extends StatelessWidget {
   RepeatContainerCode({@required this.colors,this.cardwidget});
 final Color? colors;
 final Widget? cardwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardwidget,
      decoration: BoxDecoration(
        color: colors,
            borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}