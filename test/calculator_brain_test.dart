import 'package:flutter_test/flutter_test.dart';
import 'package:anukul_app/calculator_brain.dart';

void main() {
  group('CalculatorBrain', () {
    test('Calculates BMI correctly for normal weight', () {
      final calc = CalculatorBrain(height: 180.0, weight: 70.0);
      expect(calc.calculateBMI(), '21.6');
      expect(calc.getResult(), 'Normal');
    });

    test('Calculates BMI correctly for overweight', () {
      final calc = CalculatorBrain(height: 160.0, weight: 80.0);
      // 80 / 1.6^2 = 31.25
      expect(calc.calculateBMI(), '31.3'); 
      expect(calc.getResult(), 'Overweight');
    });

    test('Calculates BMI correctly for underweight', () {
      final calc = CalculatorBrain(height: 180.0, weight: 50.0);
      // 50 / 1.8^2 = 15.43
      expect(calc.calculateBMI(), '15.4');
      expect(calc.getResult(), 'Underweight');
    });
  });
}
