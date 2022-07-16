import 'package:flutter/material.dart';

import '../contsnts/constant.dart';

class packagecontainer extends StatelessWidget {


  final String package;
  final String car;
  final String price;
  final String duration;
  // final image;
  // final VoidCallback onTap;

  const packagecontainer({
    super.key,
    required this.package,
    required this.car,
    required this.duration,
    required this.price,
    // required this.onTap,
    // required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        // onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(package, style: kmd),
                    Text(car, style: ksm),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(duration, style: ksm),
                    Text(price, style: ksm),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


