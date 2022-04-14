

import 'package:flutter/cupertino.dart';
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
int sliderheight=180;
int sliderWeight=60;
int sliderAge=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('BMI CALCULATOR'),
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
          Expanded(child:
          RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                    style:kLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderheight.toString(),
                    style:kNumberstyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),
                  ],
                ),
               Slider(
                 value: sliderheight.toDouble(),
                 min: 120.0,
                 max: 220.0,
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
                      'Weight',
                      style: kLabelStyle,
                    ),
                    Text(
                      sliderWeight.toString(),
                      style: kNumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                          iconData:FontAwesomeIcons.minus ,
                          onPress:(){
                           setState(() {
                             sliderWeight--;
                           });
                          } ,
                        ),
                        SizedBox(width: 10.0,),
                        RoundIcon(
                          iconData:FontAwesomeIcons.plus ,
                          onPress:(){
                            setState(() {
                              sliderWeight++;
                            });
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
                        'AGE',
                        style: kLabelStyle,
                      ),
                      Text(
                        sliderAge.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIcon(
                            iconData:FontAwesomeIcons.minus ,
                            onPress:(){
                              setState(() {
                                sliderAge--;
                              });
                            } ,
                          ),
                          SizedBox(width: 10.0,),
                          RoundIcon(
                            iconData:FontAwesomeIcons.plus ,
                            onPress:(){
                              setState(() {
                                sliderAge++;
                              });
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
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width:  double.infinity,
              height: 80.0,
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
