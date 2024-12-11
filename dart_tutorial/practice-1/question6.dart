// Write a program to print full name of a from first name and last name using user input.

import 'dart:io';

void main(List<String> args) {
  print('Enter First Name : ');
  final firstName = stdin.readLineSync();
  print('Enter Last Name : ');
  final lastName = stdin.readLineSync();
  print('Full Name : $firstName $lastName');
}