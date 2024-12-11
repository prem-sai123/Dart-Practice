// Write a program that takes a list of numbers for example

// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

import 'dart:math';

void main(List<String> args) {
  final numberList = List.generate(10, (index) => Random().nextInt(100));
  print([numberList.first,numberList.last]);
}
