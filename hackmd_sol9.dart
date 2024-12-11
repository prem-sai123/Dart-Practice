// Generate a random number between 1 and 100. Ask the user to guess the number,
// then tell them whether they guessed too low, too high, or exactly right.
// Keep track of how many guesses the user has taken, and when the game ends, print this out.

import 'dart:io';
import 'dart:math';

import 'string_ext.dart';

void main(List<String> args) {
  print('Print Exit to quit the Game ');
  guessingGame();
}

void guessingGame() {
  final randomNumber = Random().nextInt(100);
  print(randomNumber);
  int noOfAttempts = 0;
  while (true) {
    noOfAttempts++;
    print('Please enter a Numbet btwn 0 and 100');
    final enteredStr = stdin.readLineSync();
    if (enteredStr.isValid) {
      if (enteredStr!.toLowerCase() == 'exit') {
        print('Thank You...!');
        break;
      } else if(enteredStr.isValidNum) {
        final enteredNumber = int.parse(enteredStr);
        if(enteredNumber.isGreaterThanHundred) {
          print('Please choose a number InBtwn 0 and 100');
          continue;
        } else if(enteredNumber == randomNumber) {
          print('Congrajulations..! You succeed in $noOfAttempts Attempts.');
          break;
        } else if(enteredNumber > randomNumber) {
          print('You Entered Higher Number');
          continue;
        } else {
          print('You Entered Lower Number');
          continue;
        }
      }
    } else {
      print('Please Enter Valid Number');
    }
  }
}
