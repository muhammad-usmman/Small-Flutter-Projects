 import 'package:bmi_calculator/constant.dart';
 import 'package:bmi_calculator/containerFile.dart';
 import 'package:flutter/material.dart';
 import 'input_page.dart';



 class ResultScreen extends StatelessWidget {
    ResultScreen({
     required  this.BmiResult,
      required this.interpretation,
      required this.resultText
          });

   final String BmiResult;
   final String resultText;
   final String interpretation;


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
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    BmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
           ),
           Expanded(
             child:  GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
               },

               child: Container(
                 child: Center(
                   child: Text(
                     'RE_Calculate',
                     style: kLargeButtonStyle,
                   ),
                 ),
                 color: Color(0xFFEB1555),
                 margin: EdgeInsets.only(top: 10.0),
                 width:  double.infinity,
                 height: 80.0,
               ),
             ),

           ),

         ],
       ),
      );
   }
  }

