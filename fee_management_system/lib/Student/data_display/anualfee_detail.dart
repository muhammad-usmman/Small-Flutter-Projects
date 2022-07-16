// import 'package:driving_school/pages/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:fee_management_system/widgets/packageswidget.dart';

import 'package:fee_management_system/contsnts/constant.dart';

class fee_detail extends StatelessWidget {
  const fee_detail({Key? key}) : super(key: key);

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
                Text('Fee Detail',style: ksg, ),
                // Text('Select your preffered Package', style: kmd,),
                sizedb20,
                sizedb20,
                packagecontainer(
                  package: 'Student 1',
                  car: 'Name: Usama',
                  duration: 'Subject: DLD',
                  price: 'Status: Paid',
                ),
                sizedb20,

                packagecontainer(
                  package: 'Student 2',
                  car: 'Name: Arslan',
                  duration: 'Fee: 1500',
                  price: 'Status: Pending',
                ),
                sizedb20,


                packagecontainer(
                  package: 'Student 3',
                  car: 'Name: Muneeb',
                  duration: 'Fee: 1500',
                  price: 'Status: Paid',
                  // image: Image.asset('assets/images/vitz.png'),
                ),
                sizedb20,


                packagecontainer(
                  package: 'Student 4',
                  car: 'Name: Ahsan',
                  duration: 'Fee: 1500',
                  price: 'Status: Pending',
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
