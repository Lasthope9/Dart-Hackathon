import 'package:hacks/palindrome_checker.dart';
import 'package:hacks/sorting_algorithms.dart';
import 'package:hacks/basic_calculator.dart';

void main() {
  // Palindrome checker
  print('Palindrome Checker:');
  print(
      'Is "A woman, a boat, a river, Brazil" a palindrome? ${PalindromeChecker.isPalindrome("A woman, a boat, a river, Brazil")}');
  print(
      'Is 1234321 a palindrome? ${PalindromeChecker.isNumberPalindrome(1234321)}');

  // Sorting algorithms
  print('\nSorting Algorithms:');
  List<int> numbers = [78, 33, 88, 11, 34, 120, 50];
  print('Original List: $numbers');
  print('Bubble Sort: ${SortingAlgorithms.bubbleSort([...numbers])}');
  print('Merge Sort: ${SortingAlgorithms.mergeSort([...numbers])}');

  // Basic calculator
  print('\nBasic Calculator:');
  print('10 + 5 = ${BasicCalculator.calculate(10, 5, '+')}');
  print('10 * 5 = ${BasicCalculator.calculate(10, 5, '*')}');
  print(
      'Multi-step calculation [10 + 3 * 5]: ${BasicCalculator.multiStepCalculation([
        10,
        3,
        5
      ], [
        '+',
        '*'
      ])}');
}
