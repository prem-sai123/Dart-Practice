// Write a program to print a square of a number using user input.

import 'dart:io';

void main(List<String> args) {
  print('Enter the Number : ');
  final enteredNumInStr = stdin.readLineSync();
  if(enteredNumInStr is String) {
    final parsedInt = int.tryParse(enteredNumInStr);
    if(parsedInt == null) {
      print("Enter Valid Number.");
    } else {
      final square = parsedInt * parsedInt;
      print('Square ($enteredNumInStr) is $square');
    }
  } else {
    print("Enter Valid Number.");
  }
}