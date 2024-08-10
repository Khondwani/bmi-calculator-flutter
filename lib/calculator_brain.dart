// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  
  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher tha normal body weight. Try to excercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weigth. You can eat a bit more.';
    }
  }
}
