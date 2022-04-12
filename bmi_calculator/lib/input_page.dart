
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerFile.dart';

const activecolor = Color(0xFF1D1E33);
const deactivecolor = Color(0xFF111328);

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactivecolor;
  Color feMaleColor = deactivecolor;

  void updatecolor(int gender)
  {
    if (gender == 1){
      maleColor = activecolor;
      feMaleColor = deactivecolor;
    }
    if (gender == 2){
      maleColor = deactivecolor;
      feMaleColor = activecolor;
    }
  }

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
                child:  GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: RepeatContainerCode(
                    colors: maleColor,
                    cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label:'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child:  GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      updatecolor(2);
                    });
                  },
                  child: RepeatContainerCode(
                    colors: feMaleColor,
                  cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.female,
                      label:'FEMALE',
                  ),
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

