import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerFile.dart';
import 'constant.dart';


enum Gender{
  male,
  female,
  other,

}

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender selectGender=Gender.other;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(child: Row(
            children:<Widget> [
              Expanded(

                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.male;
                      });
                    },
                    colors: selectGender==Gender.male
                        ? activecolor
                        :deactivecolor,
                    cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label:'MALE',
                    ),
                  ),

              ),
              Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.female;
                      });
                    },

                    colors:  selectGender==Gender.female?activecolor:deactivecolor,
                  cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.female,
                      label:'FEMALE',
                  ),
                  ),

              ),

            ],
          ),
          ),
          Expanded(child: RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              children: [
                Text('HEIGHT',style:kLabelStyle),
              ],
            ),
           ),
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

