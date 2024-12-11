/// Ask the user for a number. Depending on whether the number is even or odd, 
/// print out an appropriate message to the user.

import 'dart:io';
import 'string_ext.dart';

void main(List<String> args) {
  print("Enter the Number : ");
  final inputNumberStr = stdin.readLineSync();

  if(inputNumberStr.isValidNum) {
    print('Entered Number is Not a Valid Number');
    return;
  }

  final enteredNumber = int.parse(inputNumberStr!);

  if(enteredNumber % 2 ==0) {
    print('Entered Number $enteredNumber is an EVEN Number');
  } else {
    print('Entered Number $enteredNumber is an ODD Number');
  }
  
}