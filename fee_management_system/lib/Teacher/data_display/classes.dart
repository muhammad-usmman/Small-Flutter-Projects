// import 'package:driving_school/pages/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:fee_management_system/widgets/packageswidget.dart';

import 'package:fee_management_system/contsnts/constant.dart';

class class_detail extends StatelessWidget {
  const class_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text('Classes',style: ksg, ),
                // Text('Select your preffered Package', style: kmd,),
                sizedb20,
                sizedb20,
                packagecontainer(
                  package: 'Class 1',
                  car: 'Subject: DLD',
                  duration: 'Duration: 08::30 to 10::00',
                  price: 'Students: 11',
                  // image: Image.asset('assets/images/vitz.png'),
                ),
                sizedb20,

                packagecontainer(
                  package: 'Class 2',
                  car: 'Subject: ICT',
                  duration: 'Duration: 10::30 to 12::00',
                  price: 'Students: 8',
                  // image: Image.asset('assets/images/vitz.png'),
                ),
                sizedb20,


                packagecontainer(
                  package: 'Class 3',
                  car: 'Subject: MAD',
                  duration: 'Duration: 12::30 to 02::00',
                  price: 'Students: 11',
                  // image: Image.asset('assets/images/vitz.png'),
                ),
                sizedb20,


                 packagecontainer(
                  package: 'Class 4',
                  car: 'Subject: Web',
                  duration: 'Duration: 02::30 to 03::00',
                  price: 'Students: 11',
                  // image: Image.asset('assets/images/vitz.png'),
                ),

                sizedb20,

              ],
            ),
          ),

        ),
      ),

    );
  }
}
