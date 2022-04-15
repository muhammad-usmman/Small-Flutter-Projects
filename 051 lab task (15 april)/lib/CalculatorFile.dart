import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height,this.min, this.max,this.compare});
  final int? height;
  final int? max;
  final int? min;
  final int? compare;
  int? _bmi;

  String calculateBMI() {
    if (compare! >= min! && compare! >= max!) {
      return 'PERFECT';
    }
    else if (compare! < min! && compare! < max!) {
      return 'Too HIGH!!!!!!';
    }
    if (compare! > min! && compare! > min!) {
      return 'TOO LOW!!!!!!';
    }
    else {
      return 'Error';
    }
    _bmi = compare;
  }

}