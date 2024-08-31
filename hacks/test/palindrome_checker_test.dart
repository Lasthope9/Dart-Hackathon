import 'package:test/test.dart';
import 'package:hacks/palindrome_checker.dart';

void main() {
  test('String isPalindrome Check', () {
    expect(PalindromeChecker.isPalindrome('madam'), isTrue);
    expect(PalindromeChecker.isPalindrome('hello'), isFalse);
    expect(PalindromeChecker.isPalindrome('A man, a plan, a canal, Panama'),
        isTrue);
    expect(
        PalindromeChecker.isPalindrome('Was it a car or a cat I saw?'), isTrue);
  });

  test('Number Palindrome Check', () {
    expect(PalindromeChecker.isNumberPalindrome(12321), isTrue);
    expect(PalindromeChecker.isNumberPalindrome(12345), isFalse);
    expect(PalindromeChecker.isNumberPalindrome(12321), isTrue);
    expect(PalindromeChecker.isNumberPalindrome(12345), isFalse);
  });
}
