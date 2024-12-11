// Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

import 'string_ext.dart';

void main(List<String> args) {
  print("Enter the String : ");
  final enteredStr = stdin.readLineSync();
  if (enteredStr.isNotValid) {
    print('Please Enter Valid String..!');
  }
  print(enteredStr?.split('').reversed.join());
}