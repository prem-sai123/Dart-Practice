import 'dart:io';
import 'string_ext.dart';
// Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.

void main() {
  print('Enter your Name');
  final inputName = stdin.readLineSync();

  if (inputName.isNotValid) {
    stdout.write("Please Enter Your Name Correctly");
    return;
  }
  print('Enter your Age');
  final inputAge = stdin.readLineSync();
  if (inputAge.isNotValid) {
    stdout.write("Please Enter Your Age");
  }
  final age = int.tryParse(inputAge!);
  if(age == null) {
    stdout.write("$inputAge ,Please Enter Valid Age");
  }
  stdout.write("You are less than ${100-age!} to become 100.");
}

