import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerFile.dart';
import 'constant.dart';
import 'resultfile.dart';
import 'package:bmi_calculator/CalculatorFile.dart';

enum number{
  easy,
  tough,
  num,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

int sliderheight=50;
int max_value=50;
int min_value=20;
 number slect_number=number.num;
 int randomnum=0;
 bool isdisable=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('NUMBER GUESS'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(child:
          Row(
            children:<Widget> [
              Expanded(

                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        slect_number=number.easy;
                        randomnum=Random().nextInt(100);
                        sliderheight=randomnum;
                        isdisable=false;
                      });
                    },
                    colors: slect_number==number.easy
                        ? activecolor
                        :deactivecolor,
                    cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.etsy,
                      label:'Easy',
                    ),
                  ),

              ),
              Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        slect_number=number.tough;
                        isdisable=true;
                      });
                    },

                    colors:  slect_number==number.tough?activecolor:deactivecolor,
                  cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.t,
                      label:'Tough',
                  ),
                  ),

              ),

            ],
          ),
          ),
          Expanded(child:
          RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                    style:kLabelStyle),


               Slider(
                 value: sliderheight.toDouble(),
                 min: 0.0,
                 max: 100.0,

                 activeColor: Color(0xFFEB1555),
                 inactiveColor: Color(0xFF8d8e98),
                 onChanged:(double newValue){
                  setState(() {
                    sliderheight= newValue.round();
                  });
                 },
               ),
              ],
            ),
           ),
             ),
          Expanded(child:
          Row(
            children:<Widget> [
              Expanded(
                child:
                RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Max',
                      style: kLabelStyle,
                    ),
                    Text(
                      max_value.toString(),
                      style: kNumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                          iconData:FontAwesomeIcons.minus ,
                          onPress:(){
                           setState(() {
                             if(isdisable==true){
                               return null;
                             }
                             else{
                            max_value--;
                             }
                           }
                           );
                          } ,
                        ),
                        SizedBox(width: 10.0),
                        RoundIcon(
                          iconData:FontAwesomeIcons.plus ,
                          onPress:(){
                            setState(() {
                              if(isdisable==true){
                                return null;
                              }
                              else{
                                max_value++;
                              }
                            }
                            );
                          } ,
                        ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0xFF1D1E33),

                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Min',
                        style: kLabelStyle,
                      ),
                      Text(
                        min_value.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIcon(
                            iconData:FontAwesomeIcons.minus ,
                            onPress:(){
                              setState(() {
                                if(isdisable==true) {
                                  return null;
                                }
                                 else{
                                   min_value--;
                                }
                              }
                              );
                            } ,
                          ),
                          SizedBox(width: 10.0),
                          RoundIcon(
                            iconData:FontAwesomeIcons.plus ,
                            onPress:(){
                              setState(() {
                                if(isdisable==true) {
                                    return null;
                                  }else{
                                      min_value++;
                                  }
                                }

                              );
                            } ,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
           ),
          ),


          GestureDetector(
            onTap: (){
              CalculatorBrain calc=CalculatorBrain(
                  height: sliderheight,
                  min: min_value,
                  max: max_value);
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ResultScreen(
                  BmiResult: calc.calculateBMI(),
                  compare: calc.compare.toString(),

                )));
            },

            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style: kLargeButtonStyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width:  double.infinity,
                height: 80.0,
            ),
          )
                  ],
      )
    );
  }
}



class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData,required this.onPress});
  final IconData iconData;
  final  VoidCallback onPress;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints:  BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E) ,
    );
  }
}
