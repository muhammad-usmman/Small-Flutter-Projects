// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'iconTextfile.dart';
// import 'containerFile.dart';
// import 'constant.dart';
// import 'resultfile.dart';
// import 'package:bmi_calculator/CalculatorFile.dart';
// import 'dart:math';
//
// enum number {
//   easy,
//   tough,
//   a
// }
// class InputPage extends StatefulWidget {
//   @override
//   _InputPageState createState() => _InputPageState();
// }
//
// class _InputPageState extends State<InputPage> {
//   int sliderHeight=50;
//   int maxvalue=50;
//   int minvalue=50;
//   number selectnumber=number.a;
//   int randomnum=0;
//   bool isdisable=false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color (0xFF0A0E21),
//           title: Text('Guess The Number'),
//         ),
//         body:Column(
//           children: [
//             Expanded(
//                 child:Row(
//                   children: [
//                     Expanded(
//                       child: repeatcontainercode(
//                         onpressed : (){
//                           setState(() {
//                             selectnumber=number.easy;
//                             randomnum=Random().nextInt(100);
//                             sliderHeight=randomnum;
//                             isdisable=false;
//                           });
//                         },
//                         colors:selectnumber==number.easy?activecolor:deactivecolor,
//                         cardwidget: RepeatTextandIcon(
//                           iconData: FontAwesomeIcons.handPeace,
//                           label: "EASY",
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: repeatcontainercode(
//                         onpressed : (){
//                           setState(() {
//                             selectnumber=number.tough;
//                             isdisable=true;
//                           });
//                         },
//                         colors:selectnumber==number.tough?activecolor:deactivecolor,
//                         cardwidget: RepeatTextandIcon(
//                           iconData: FontAwesomeIcons.hand,
//                           label: "TOUGH",
//                         ),
//                       ),
//
//                     ),
//                   ],
//                 ) ),
//             Expanded(
//                 child:Row(
//                   children: [
//                     Expanded(child:
//                     repeatcontainercode(
//                       colors: Color(0xFF1D1E33),
//                       cardwidget: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Slider(value:sliderHeight.toDouble(),
//                             min: 1,
//                             max: 100,
//                             activeColor:Color(0xFFEB1555),
//                             inactiveColor: Color(0xFF8D8E98),
//                             onChanged: ( double newValue){
//                               setState(() {
//                                 sliderHeight=newValue.round();
//                               });
//                             },)
//                         ],
//                       ),
//                     ),
//                     ),
//                   ],
//                 )),
//             Expanded(
//                 child:Row(
//                   children: [
//                     Expanded(child:  repeatcontainercode(
//                       colors: Color(0xFF1D1E33),
//                       cardwidget: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("MAX",style: KLabelstyle,),
//                           Text(maxvalue.toString(),style: Knumberstyle,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Roundicon(iconData: FontAwesomeIcons.minus, onpress: (){
//                                 setState(() {
//                                   if(isdisable==true){
//                                     return null;
//                                   }
//                                   else{
//                                     maxvalue--;
//                                   }
//                                 });
//                               }),
//                               SizedBox(width: 10.0,),
//                               Roundicon(iconData: FontAwesomeIcons.plus, onpress: (){
//                                 setState(() {
//                                   if(isdisable==true){
//                                     return null;
//                                   }
//                                   else {
//                                     maxvalue++;
//                                   }
//                                 });
//                               }),
//                             ],
//                           )
//                         ],
//                       ),
//                     )),
//                     Expanded(child:  repeatcontainercode(
//                       colors: Color(0xFF1D1E33),
//                       cardwidget: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("MIN",style: KLabelstyle,),
//                           Text(minvalue.toString(),style: Knumberstyle,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Roundicon(iconData: FontAwesomeIcons.minus, onpress: (){
//                                 setState(() {
//                                   if(isdisable==true){
//                                     return null;
//                                   }
//                                   else {
//                                     minvalue--;
//                                   }
//                                 });
//                               }),
//                               SizedBox(width: 10.0,),
//                               Roundicon(iconData: FontAwesomeIcons.plus, onpress: (){
//                                 setState(() {
//                                   if(isdisable==true){
//                                     return null;
//                                   }
//                                   else {
//                                     minvalue++;
//                                   }
//                                 });
//                               }),
//                             ],
//                           )
//                         ],
//                       ),
//                     )),
//                   ],
//                 ) ),
//             GestureDetector(
//               onTap: (){
//                 calculatorBrain calc= calculatorBrain(
//                   height: sliderHeight,
//                   min:minvalue,
//                   max:maxvalue,
//                 );
//                 Navigator.push(context, MaterialPageRoute(
//                     builder:(context)=>resultscreen(
//                       resultText: calc.getresult(),
//                       compare: calc.compare(),
//
//
//                     ))
//                 );
//               },
//               child: Container(
//                 child: Center(
//                   child: Text("Show Result",style:
//                   Klargebutton,),
//                 ),
//                 color: Color(0xFFEB1555),
//                 margin: EdgeInsets.only(top: 10.0),
//                 width: double.infinity,
//                 height: 80.0,
//               ),
//
//             ),
//           ],
//         )
//     );
//   }
// }
//
//
//
// class Roundicon extends StatelessWidget {
//   Roundicon({
//     required this.iconData,
//     required this.onpress});
//   final IconData iconData;
//   final VoidCallback onpress;
//   @override
//   Widget build(BuildContext context) {
//
//     return RawMaterialButton(
//       child: Icon(iconData),
//
//       onPressed:onpress,
//       elevation: 6.0,
//       constraints: BoxConstraints.tightFor(
//         height: 56,
//         width: 56,
//       ),
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }