import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  late double _bmi;

  String calcBmi() {
    _bmi = weight / pow((height * 0.01), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else {
      if (_bmi >= 18.5) {
        return 'NORMAL';
      } else {
        return 'UNDERWEIGHT';
      }
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Your BMI result is overweight. You should try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your BMI result is normal. Yay!';
    } else {
      return 'Your BMI result is underweight. Your should try to eat more.';
    }
  }
}
