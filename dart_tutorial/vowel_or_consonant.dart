//Write a dart program to check whether a character is a vowel or consonant.

void main(List<String> args) {
  /// [int]
  final enteredchar = 'b';
  print(enteredchar.isVowel ? 'Vowel' : 'Consonant');
}

extension StringExtension on String {
  bool get isVowel => ['a','e','i','o','u'].contains(toLowerCase());
}


int minimum<T extends num>(T numbers) {
  
  return 0;
}