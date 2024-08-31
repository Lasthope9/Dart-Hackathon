class PalindromeChecker {
  /// Checks if the given [input] string is a palindrome.
  ///
  /// The method removes non-alphanumeric characters and converts the
  /// string to lowercase before checking for palindromes.
  /// Returns `true` if the string is a palindrome, `false` otherwise.
  static bool isPalindrome(String input) {
    String cleanInput =
        input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), "").toLowerCase();
    return cleanInput == cleanInput.split('').reversed.join('');
  }

  /// Checks if the given [number] is a palindrome.
  ///
  /// The method converts the number to a string and then uses the
  /// [isPalindrome] method to check for palindrome properties.
  /// Returns `true` if the number is a palindrome, `false` otherwise.
  static bool isNumberPalindrome(int number) {
    return isPalindrome(number.toString());
  }
}
