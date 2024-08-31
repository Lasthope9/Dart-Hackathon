import 'package:test/test.dart';
import 'package:hacks/basic_calculator.dart';

void main() {
  test('Basic Calculator', () {
    expect(BasicCalculator.calculate(10, 10, '+'), equals(20));
    expect(BasicCalculator.calculate(10, 10, '-'), equals(0));
    expect(BasicCalculator.calculate(10, 10, '*'), equals(100));
    expect(BasicCalculator.calculate(10, 10, '/'), equals(1));
    expect(() => BasicCalculator.calculate(10, 0, '/'),
        throwsA(isA<ArgumentError>()));
  });

  test('Multi-step Calculation', () {
    expect(BasicCalculator.multiStepCalculation([10, 3, 5], ['+', '*']),
        equals(65));
  });
}
