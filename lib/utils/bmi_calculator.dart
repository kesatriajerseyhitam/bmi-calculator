import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  double _bmi;

  BMICalculator({
    this.height,
    this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getResult() {
    if (_bmi >= 25) {
      return {
        "status": "overweight",
        "advice":
            "You have a higher than normal body weight. Try to exercise more.",
      };
    } else if (_bmi > 18.5) {
      return {
        "status": "normal",
        "advice": "You have a normal body. Good job.",
      };
    } else {
      return {
        "status": "underweight",
        "advice":
            "You have a lower than normal body weight. You can eat a bit more.",
      };
    }
  }
}
