// Write a program (using functions!) that asks the user for a long string containing multiple words.
// Print back to the user the same string, except with the words in backwards order.

// Example
// I/P :   My name is Michele
// O/P :   Michele is name My

import 'dart:io';

void main(List<String> args) {
  print("Enter Long String : ");
  final enteredStr = stdin.readLineSync()!;
  print(enteredStr.split(" ").reversed.toList().join(" "));
}
