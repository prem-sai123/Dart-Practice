import 'dart_tutorial/vowel_or_consonant.dart';

void printSumOfNumbers(int num1, int num2, int num3) {
  print('Summation of Numbers is : ${num1 + num2 + num3}');
}

void main() {
  final numbers = [1, 67, 34, 22, 33, 66, 97, 3, 22];
  print(numbers.expand((element) => ['HI', element]));

  final names = ['A', 'B', 'C', 'D', 'E', "I", 'M', 'O'];
  // for indexed loop
  // for each loop

  final updatedNames = [
    for (final name in names) ...[if (name.isVowel) ...['Vowel $name'] else ...[ 'Consonant $name']],
  ];

  final updatedNames2 = [
    for (final name in names) ...[if (name.isVowel) {'Vowel $name'} else 'Consonant $name'],
  ];
  print(updatedNames);
}
