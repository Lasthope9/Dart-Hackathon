class BasicCalculator {
  /// Performs a basic arithmetic operation based on the provided operator.
  ///
  /// [num1] The first operand.
  /// [num2] The second operand.
  /// [operator] The arithmetic operator, which can be "+", "-", "*", "/", or "%".
  /// Returns the result of the operation.
  /// Throws [ArgumentError] if the operator is invalid or if there is a division by zero.
  static double calculate(double num1, double num2, String operator) {
    switch (operator) {
      case "+":
        return num1 + num2;
      case "-":
        return num1 - num2;
      case "*":
        return num1 * num2;
      case "/":
        if (num2 == 0) {
          throw ArgumentError('Division by zero is not allowed.');
        }
        return num1 / num2;
      case "%":
        if (num2 == 0) {
          throw ArgumentError('Division by zero is not allowed.');
        }
        return num1 % num2;
      default:
        throw ArgumentError(
            'Invalid operator! Please use "+", "-", "*", "/", or "%".');
    }
  }

  /// Performs a sequence of calculations based on the provided numbers and operators.
  ///
  /// [numbers] A list of numbers to be used in calculations.
  /// [operators] A list of operators to be used between the numbers.
  /// Returns the result of the multi-step calculation.
  /// Throws [ArgumentError] if the number of operators is not one less than the number of numbers.
  static double multiStepCalculation(
      List<double> numbers, List<String> operators) {
    if (numbers.length != operators.length + 1) {
      throw ArgumentError(
          'Number of operators must be one less than the number of numbers.');
    }
    double result = numbers[0];
    for (int i = 0; i < operators.length; i++) {
      result = calculate(result, numbers[i + 1], operators[i]);
    }
    return result;
  }
}
