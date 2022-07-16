// import 'package:driving_school/pages/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:fee_management_system/widgets/packageswidget.dart';

import 'package:fee_management_system/contsnts/constant.dart';

class annual_fee_detail extends StatelessWidget {
  const annual_fee_detail({Key? key}) : super(key: key);

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
                Text( 'Annual Fee Detail',style: ksg, ),
                // Text('Select your preffered Package', style: kmd,),
                sizedb20,
                sizedb20,
                packagecontainer(
                  package: 'Name: Usama',
                  car: 'Batch no: Fa19',
                  duration: 'Email:',
                  price: 'Phone: ',
                ),
                sizedb20,

                packagecontainer(
                  package: 'Total classes: 2',
                  car: '',
                  duration: 'Total Fee: 3000',
                  price: 'Status: Pending',
                ),
                sizedb20,


                // packagecontainer(
                //   package: 'Student 3',
                //   car: 'Name: Muneeb',
                //   duration: 'Fee: 1500',
                //   price: 'Status: Paid',
                //   // image: Image.asset('assets/images/vitz.png'),
                // ),
                // sizedb20,
                //
                //
                // packagecontainer(
                //   package: 'Student 4',
                //   car: 'Name: Ahsan',
                //   duration: 'Fee: 1500',
                //   price: 'Status: Pending',
                //   // image: Image.asset('assets/images/vitz.png'),
                // ),
                //
                // sizedb20,

              ],
            ),
          ),

        ),
      ),

    );
  }
}
