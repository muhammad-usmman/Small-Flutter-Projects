 import 'package:bmi_calculator/constant.dart';
 import 'package:bmi_calculator/containerFile.dart';
 import 'package:flutter/material.dart';
 import 'input_page.dart';



 class ResultScreen extends StatelessWidget {
    ResultScreen({
     required  this.BmiResult,
      required this.compare,


          });

   final String BmiResult;
   final String compare;



   @override
   Widget build(BuildContext context)
   {
     return Scaffold(
       appBar: AppBar(
         title: Text('BMI RESULT'),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Expanded(
             child: Container(
               child:  Center(
                 child: Text(
                    'Your Result',
                   style: kTitleStyleS2,
                 ),
               ),
             ),

           ),
           Expanded(
            child: RepeatContainerCode(
              colors: activecolor,
              cardwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    BmiResult,
                    style: kResultText,
                  ),
                  Text(
                    compare.toUpperCase(),
                    style: kBMITextStyle,

                  ),],
              ),
            ),
           ),
           Expanded(
             child:  GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
               },

               child: Container(
                 child:

                    Text(
                     'RE_Calculate',
                     style: kLargeButtonStyle,

                 ),
                 color: Color(0xFFEB1555),
                 margin: EdgeInsets.only(top: 10.0),
                 width:  double.infinity,
                 height: 30.0,
               ),
             ),

           ),

         ],
       ),
      );
   }
  }

