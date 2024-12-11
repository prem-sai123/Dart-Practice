// Create a program that asks the user for a number and then
// prints out a list of all the divisors of that number.

import 'dart:io';

import 'string_ext.dart';

void main(List<String> args) {
  print("Enter the Number : ");
  final enteredNumberStr = stdin.readLineSync();
  if (enteredNumberStr.notAvalidNum) {
    print('Please Enter a Valid Number');
    return;
  }
  final enteredNumber = int.parse(enteredNumberStr!);
  print([
    for (int i = 1; i < enteredNumber; i++)
      if (enteredNumber % i == 0) i
  ]);
}
