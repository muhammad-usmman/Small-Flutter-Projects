import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/containerFile.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';


class ResultScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
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
                   'Normal',
                   style: kResultText,
                 ),
                 Text(
                   '18.3',
                   style: kBMITextStyle,
                 ),
                 Text(
                   'BMI is Low you Should have to work More',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
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
